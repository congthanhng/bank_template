import 'package:bank_internationalization/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppBankLocalizations.localizationsDelegates,
        supportedLocales: AppBankLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}
