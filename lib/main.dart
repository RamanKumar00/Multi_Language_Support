import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:multi_language_support/generated/app_localizations.dart';
import 'package:provider/provider.dart';
import 'controller/language_change_controller.dart';
import 'home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<LanguageChangeController>(
      create: (_) => LanguageChangeController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageChangeController>(
      builder: (context, provider, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          // The theme of your application.
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          // Configure localization
          locale: provider.appLocale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('bn'), // Bengali
            Locale('hi'), // Hindi
            Locale('as'), // Assamese
            Locale('pa'), // Punjabi
            Locale('mr'), // Marathi
            Locale('kn'), // Kannada
            Locale('ta'), // Tamil
            Locale('te'), // Telugu
            Locale('ml'), // Malayalam
          ],
          // Set the initial screen
          home: const HomeScreen(),
        );
      },
    );
  }
}

