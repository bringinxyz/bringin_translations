import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/bringin_translations.dart';
import 'generated/bringin_translations_en.dart';

/// Adding a locale means editing this file in three places, all marked with
/// `ADD LOCALE HERE`. `test/bringin_translations_test.dart` fails if you miss
/// one, so a half-wired locale cannot land.

extension BuildContextLocalizations on BuildContext {
  BringinTranslations texts() =>
      BringinTranslations.of(this) ?? getSystemAppLocalizations();
}

Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates() {
  return [
    BringinTranslations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}

/// English must stay first — it is the fallback locale.
Iterable<Locale> supportedLocales() {
  return [
    const Locale("en", ""),
    // ADD LOCALE HERE (2/3)
  ];
}

Locale getSystemLocale() {
  final localeName = Platform.localeName;
  if (localeName.contains("_")) {
    final pieces = localeName.split("_");
    return Locale(pieces[0], pieces[1]);
  } else {
    return Locale(localeName);
  }
}

/// Prefer `context.texts()`. This exists only because there is no official way
/// to reach a localizations object without a [BuildContext].
///
/// Uses `dart:io`, so this package is mobile/desktop only — not web-safe.
BringinTranslations getSystemAppLocalizations() {
  switch (getSystemLocale().languageCode) {
    // ADD LOCALE HERE (3/3)
    case "en":
    default:
      return BringinTranslationsEn();
  }
}
