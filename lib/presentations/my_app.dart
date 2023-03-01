import 'package:bank_internationalization/l10n/l10n.dart';
import 'package:bank_template/presentations/pages/home/home_shelf.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppBankLocalizations.localizationsDelegates,
      supportedLocales: AppBankLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
