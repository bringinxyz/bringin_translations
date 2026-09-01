# Contributing translations

Thanks for helping translate Bringin. This guide is written for translators —
you do not need to know Dart, and you do not need access to the app's source.

Before you start, **[open a "New language" issue](../../issues/new?template=new_language.md)**
to claim the language. It stops two people translating Spanish in parallel.

## What you are editing

`.arb` files are JSON. Each entry is `"key": "text"`:

```json
{
  "@@locale": "en",
  "home_balance_title": "Your balance",
  "card_order_action_confirm": "Order card"
}
```

**Translate the text on the right. Never touch the key on the left.** The app
looks strings up by key — a changed key is a crash or a blank screen.

## Translating an existing language

1. Open `lib/app_<code>.arb` (e.g. `lib/app_de.arb`).
2. Fill in or improve the values.
3. Open a pull request.

## Adding a new language

1. Copy `lib/app_en.arb` to `lib/app_<code>.arb`, using the
   [ISO 639-1 code](https://en.wikipedia.org/wiki/List_of_ISO_639_language_codes)
   (`de`, `es`, `fr`, `pt`…).
2. Change the first line to your locale: `"@@locale": "de",`.
3. Translate the values.
4. Wire the language up in `lib/bringin_translations_locales.dart`. There are
   three spots, each marked `ADD LOCALE HERE`:

   ```dart
   // 1/3 — import
   import 'generated/bringin_translations_de.dart';

   // 2/3 — supportedLocales()
   const Locale("de", ""),

   // 3/3 — getSystemAppLocalizations() switch
   case "de":
     return BringinTranslationsDe();
   ```

   Miss one and `flutter test` fails — the language would otherwise be
   invisible to users despite the file existing.
5. If you have Flutter installed, run `flutter gen-l10n` and commit
   `lib/generated/`. **If you don't, say so in the PR** and a maintainer will
   run it for you. CI will show the step as failing until then; that is fine.

## Rules

### Keep `{placeholders}` exactly as they are

```json
"payment_error_to_send": "Failed to send payment: {error}"
```

`{error}` is replaced at runtime with a real value. Copy it verbatim —
translate only the words around it. `{fehler}` breaks the app. This is the most
common way a translation PR fails CI.

Word order may change freely; placeholders can move anywhere in the sentence.

### Do not translate these

Bitcoin and banking terms that are used untranslated across the industry:

`Bitcoin` · `Lightning` · `sats` · `Spark` · `Liquid` · `on-chain` · `IBAN` ·
`BIC` · `SEPA` · `KYC` · `PIN` · `QR` · `Bringin`

If your language genuinely has an established word for one of these, mention it
in the PR and we'll discuss.

### Never write numbers, currency or dates into a string

The app formats these itself, in European style (`€32 000,50` — comma decimal
separator, space thousands separator). Don't bake `€`, digits, or date formats
into translated text; if a string needs a number it already has a
`{placeholder}` for it.

### Machine translation

Using a machine translator as a first pass is fine, but **read every string in
context afterwards**. This is a banking app: a mistranslated confirmation
button costs someone money. PRs that look like raw unreviewed machine output
will be asked for a revision.

Watch out especially for:

- Short strings that are buttons (`Send`, `Confirm`) vs. labels — pick the
  imperative form for anything ending in `_action_*`.
- `send` / `receive` / `withdraw` / `deposit`, which many translators collapse
  into one word. They are distinct flows in the app.

### Keep it short

The app is a phone screen. German and Finnish run ~30% longer than English —
if a natural translation is much longer than the English, prefer the shorter
wording.

## Key naming (for Bringin developers adding new strings)

Flat `snake_case`, no nesting:

```
<feature>_<subfeature>_<role>[_<detail>]
```

`<feature>` mirrors the directory name under the app's `lib/routes/`, so every
string on a screen greps together.

Roles: `_title` · `_subtitle` · `_message` · `_label` · `_hint` · `_empty` ·
`_action_<verb>` · `_error_<kind>`

```
card_order_title
sell_to_bank_action_confirm
send_euros_error_insufficient_balance
```

Add an `@key` metadata block for anything with a placeholder:

```json
"lnurl_fetch_invoice_min": "Minimum: {min} sats",
"@lnurl_fetch_invoice_min": {
  "placeholders": {
    "min": { "type": "String", "example": "1000" }
  }
}
```

Placeholders are `type: String` and pre-formatted by the app — we do not
delegate number or date formatting to the `.arb` layer.

## Before opening a PR

```bash
flutter pub get
flutter gen-l10n     # commit the lib/generated/ changes
flutter test
```

CI runs the same checks and will tell you exactly what's wrong. Don't worry
about getting it green on the first push.
