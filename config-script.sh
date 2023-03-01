flutter clean

flutter pub get packages/bank_internationalization

flutter pub get packages/bank_ui_kit

flutter pub get

flutter gen-l10n --output-class AppBankLocalizations --arb-dir packages/bank_internationalization/lib/l10n/arb --template-arb-file app_en.arb

flutter pub run flutter_launcher_icons