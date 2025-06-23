import 'package:flutter/material.dart';
import 'package:multi_language_support/generated/app_localizations.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.app)),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.app,
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }
} 