import 'package:flutter/material.dart';
import 'package:multi_language_support/generated/app_localizations.dart';

class DivisionPage extends StatelessWidget {
  const DivisionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.division)),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.division,
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }
} 