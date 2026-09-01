import 'dart:convert';
import 'dart:io';

import 'package:bringin_translations/bringin_translations.dart';
import 'package:flutter_test/flutter_test.dart';

/// These tests read the .arb files directly, so they need no edits when a
/// locale is added. They exist to catch the two ways a translation PR breaks
/// the app: a key the app never asks for, and a renamed ICU placeholder.

const _templateLocale = 'en';
final _libDir = Directory('lib');
final _placeholderPattern = RegExp(r'\{(\w+)\}');

Map<String, dynamic> _readArb(String locale) =>
    jsonDecode(File('lib/app_$locale.arb').readAsStringSync())
        as Map<String, dynamic>;

/// Message keys only — `@key` metadata and `@@locale` excluded.
Set<String> _messageKeys(Map<String, dynamic> arb) =>
    arb.keys.where((k) => !k.startsWith('@')).toSet();

List<String> _arbLocales() => _libDir
    .listSync()
    .map((e) => e.uri.pathSegments.last)
    .where((name) => name.startsWith('app_') && name.endsWith('.arb'))
    .map((name) => name.substring('app_'.length, name.length - '.arb'.length))
    .toList()
  ..sort();

void main() {
  final template = _readArb(_templateLocale);
  final templateKeys = _messageKeys(template);

  test('template arb is non-empty and declares its locale', () {
    expect(templateKeys, isNotEmpty);
    expect(template['@@locale'], _templateLocale);
  });

  test('supportedLocales() matches the .arb files on disk', () {
    // Catches an .arb added without wiring bringin_translations_locales.dart
    // (and the reverse). Language codes only — we do not use country variants.
    final supported = supportedLocales().map((l) => l.languageCode).toList();
    expect(supported.first, _templateLocale,
        reason: 'English must be first — it is the fallback locale');
    expect(supported.toSet(), _arbLocales().toSet());
  });

  test('every supported locale resolves to a delegate-loadable class', () {
    for (final locale in supportedLocales()) {
      expect(BringinTranslations.delegate.isSupported(locale), isTrue,
          reason: 'generated code is missing $locale — run flutter gen-l10n');
    }
  });

  group('translations match the template', () {
    for (final locale in _arbLocales().where((l) => l != _templateLocale)) {
      test('app_$locale.arb', () {
        final arb = _readArb(locale);
        expect(arb['@@locale'], locale,
            reason: 'app_$locale.arb must declare "@@locale": "$locale"');

        final localeKeys = _messageKeys(arb);

        // Checked before the placeholder loop below, which only walks keys the
        // template also has — so an unknown key reports as an unknown key
        // rather than crashing on a missing template lookup.
        final unknown = localeKeys.difference(templateKeys);
        expect(unknown, isEmpty,
            reason: 'keys not present in app_en.arb (typo, or stale after an '
                'English key was renamed/removed): $unknown');

        for (final key in localeKeys.intersection(templateKeys)) {
          Set<String> placeholders(String s) =>
              _placeholderPattern.allMatches(s).map((m) => m[1]!).toSet();
          expect(
            placeholders(arb[key] as String),
            placeholders(template[key] as String),
            reason: '"$key": ICU placeholders must be copied verbatim from '
                'English. Translate the words around them, never {likeThis}.',
          );
        }
      });
    }
  });
}
