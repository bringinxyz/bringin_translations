<!-- Thanks for contributing! Delete any section that doesn't apply. -->

**Language:** <!-- e.g. German (de) -->

**What this PR does:**

- [ ] Adds a new language
- [ ] Improves/completes an existing language
- [ ] Adds or changes English source strings (maintainers)

## Checklist

- [ ] I only changed the **values**, never the keys
- [ ] `{placeholders}` are copied verbatim from English
- [ ] No numbers, currency symbols or date formats baked into strings
- [ ] Industry terms left untranslated (`Bitcoin`, `Lightning`, `sats`, `IBAN`, `SEPA`, `KYC`…)
- [ ] I read every string in context — this is not raw machine-translation output
- [ ] New language only: wired up all three `ADD LOCALE HERE` spots in `lib/bringin_translations_locales.dart`
- [ ] Ran `flutter gen-l10n` and committed `lib/generated/`
      <!-- No Flutter installed? Leave unchecked and say so — a maintainer will run it. -->

## Notes for reviewers

<!-- Anything you were unsure about, terms you had to invent, strings that
     don't fit on a phone screen, etc. -->
