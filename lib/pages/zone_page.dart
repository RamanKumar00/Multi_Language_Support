import 'package:flutter/material.dart';
import 'package:multi_language_support/generated/app_localizations.dart';

class ZonePage extends StatelessWidget {
  const ZonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.zone)),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.zone,
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }
} 