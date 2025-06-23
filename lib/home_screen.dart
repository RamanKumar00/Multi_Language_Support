import 'package:flutter/material.dart';
import 'package:multi_language_support/generated/app_localizations.dart';
import 'package:provider/provider.dart';
import 'controller/language_change_controller.dart';
import 'pages/country_page.dart';
import 'pages/zone_page.dart';
import 'pages/division_page.dart';
import 'pages/depot_page.dart';
import 'pages/app_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A map to hold language codes and their display names
    final Map<String, String> languages = {
      'en': 'English',
      'bn': 'Bengali',
      'hi': 'Hindi',
      'as': 'Assamese',
      'pa': 'Punjabi',
      'mr': 'Marathi',
      'kn': 'Kannada',
      'ta': 'Tamil',
      'te': 'Telugu',
      'ml': 'Malayalam',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Language Selector"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      // Extend the body behind the AppBar for the gradient
      extendBodyBehindAppBar: true,
      body: Container(
        // Add a beautiful gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A1B9A), Color(0xFF42A5F5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // A nice icon
                      const Icon(
                        Icons.language,
                        size: 80,
                        color: Color(0xFF6A1B9A),
                      ),
                      const SizedBox(height: 20),
                      // The localized greeting text
                      Text(
                        AppLocalizations.of(context)!.helloWorld,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      // A label for the dropdown
                      Text(
                        'Select Your Language',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Styled Dropdown
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey[300]!, width: 1),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: Provider.of<LanguageChangeController>(context)
                                    .appLocale
                                    ?.languageCode ??
                                'en',
                            isExpanded: true,
                            icon: const Icon(Icons.translate, color: Color(0xFF42A5F5)),
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                Provider.of<LanguageChangeController>(context,
                                        listen: false)
                                    .changeLanguage(Locale(newValue));
                              }
                            },
                            items: languages.entries
                                .map<DropdownMenuItem<String>>(
                                    (MapEntry<String, String> entry) {
                              return DropdownMenuItem<String>(
                                value: entry.key,
                                child: Text(entry.value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const CountryPage()),
                        ),
                        child: Text(AppLocalizations.of(context)!.country),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const ZonePage()),
                        ),
                        child: Text(AppLocalizations.of(context)!.zone),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const DivisionPage()),
                        ),
                        child: Text(AppLocalizations.of(context)!.division),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const DepotPage()),
                        ),
                        child: Text(AppLocalizations.of(context)!.depot),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const AppPage()),
                        ),
                        child: Text(AppLocalizations.of(context)!.app),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}