# bringin_translations

Translations for the [Bringin](https://bringin.xyz) mobile app — a Bitcoin and Euro
neobank. This package holds every user-facing string in the app.

**Want to translate Bringin into your language? See [CONTRIBUTING.md](CONTRIBUTING.md).**
You do not need to be a developer, and you do not need the app's source code.

## Layout

| Path | What it is |
| --- | --- |
| `lib/app_en.arb` | English source of truth. Every other locale is a copy of this with translated values. |
| `lib/app_<code>.arb` | One file per language. |
| `lib/bringin_translations_locales.dart` | Hand-written public API — `context.texts()`, `supportedLocales()`. |
| `lib/bringin_translations.dart` | The barrel consumers import. |
| `lib/generated/` | **Generated. Never edit by hand.** Produced by `flutter gen-l10n`. |
| `test/` | Guards that catch broken translations before merge. |

### Why `lib/generated/` is committed

Apps consume this package as a **git dependency**, and Flutter does not run
`flutter gen-l10n` for git dependencies. The committed Dart in `lib/generated/`
*is* the shipped artifact. If it drifts from the `.arb` files, apps silently get
stale strings — so CI fails any PR where the two disagree.

## Local workflow

```bash
flutter pub get
flutter gen-l10n   # after ANY .arb change — then commit lib/generated/
flutter analyze
flutter test
```

CI runs exactly these on every PR, plus a `git diff --exit-code lib/generated/`
sync check.

## Consuming this package

```yaml
dependencies:
  bringin_translations:
    git:
      url: https://github.com/bringinxyz/bringin_translations.git
      ref: <commit-sha>   # pin a SHA, not a branch
```

Pin a commit SHA so a merged translation PR can never change an app build
until someone deliberately bumps it.

```dart
import 'package:bringin_translations/bringin_translations.dart';

MaterialApp(
  localizationsDelegates: localizationsDelegates(),
  supportedLocales: supportedLocales(),
);

// In any widget:
final texts = context.texts();
Text(texts.home_balance_title);
```

`getSystemAppLocalizations()` exists for the rare context-free call site. It
reads `Platform.localeName`, so this package is mobile/desktop only — not
web-safe.

## License

MIT — see [LICENSE](LICENSE).
