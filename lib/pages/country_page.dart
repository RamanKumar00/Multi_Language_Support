import 'package:flutter/material.dart';
import 'package:multi_language_support/generated/app_localizations.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.country)),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.country,
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }
} 