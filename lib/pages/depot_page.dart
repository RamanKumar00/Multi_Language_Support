import 'package:flutter/material.dart';
import 'package:multi_language_support/generated/app_localizations.dart';

class DepotPage extends StatelessWidget {
  const DepotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.depot)),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.depot,
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }
} 