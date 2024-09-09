import 'package:diary/Settings/Language/app_locale_provider.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'English';

  // List of available languages
  final Map<String, Locale> _languages = {
    'Afrikaans': const Locale('af', ''),
    'Amharic': const Locale('am', ''),
    'Arabic': const Locale('ar', ''),
    'Azerbaijani': const Locale('az', ''),
    'Belarusian': const Locale('be', ''),
    'Bulgarian': const Locale('bg', ''),
    'Bengali': const Locale('bn', ''),
    'Bosnian': const Locale('bs', ''),
    'Catalan': const Locale('ca', ''),
    'Czech': const Locale('cs', ''),
    'Danish': const Locale('da', ''),
    'German': const Locale('de', ''),
    'Greek': const Locale('el', ''),
    'English': const Locale('en', ''),
    'Spanish': const Locale('es', ''),
    'Estonian': const Locale('et', ''),
    'Persian': const Locale('fa', ''),
    'Finnish': const Locale('fi', ''),
    'French': const Locale('fr', ''),
    'Galician': const Locale('gl', ''),
    'Hausa': const Locale('ha', ''),
    'Hebrew': const Locale('he', ''),
    'Hindi': const Locale('hi', ''),
    'Croatian': const Locale('hr', ''),
    'Hungarian': const Locale('hu', ''),
    'Armenian': const Locale('hy', ''),
    'Indonesian': const Locale('id', ''),
    'Icelandic': const Locale('is', ''),
    'Italian': const Locale('it', ''),
    'Japanese': const Locale('ja', ''),
    'Georgian': const Locale('ka', ''),
    'Kazakh': const Locale('kk', ''),
    'Khmer': const Locale('km', ''),
    'Korean': const Locale('ko', ''),
    'Kurdish': const Locale('ku', ''),
    'Kyrgyz': const Locale('ky', ''),
    'Lithuanian': const Locale('lt', ''),
    'Latvian': const Locale('lv', ''),
    'Macedonian': const Locale('mk', ''),
    'Malayalam': const Locale('ml', ''),
    'Mongolian': const Locale('mn', ''),
    'Malay': const Locale('ms', ''),
    'Norwegian Bokmål': const Locale('nb', ''),
    'Dutch': const Locale('nl', ''),
    'Norwegian Nynorsk': const Locale('nn', ''),
    'Norwegian': const Locale('no', ''),
    'Polish': const Locale('pl', ''),
    'Pashto': const Locale('ps', ''),
    'Portuguese': const Locale('pt', ''),
    'Romanian': const Locale('ro', ''),
    'Russian': const Locale('ru', ''),
    'Sindhi': const Locale('sd', ''),
    'Slovak': const Locale('sk', ''),
    'Slovenian': const Locale('sl', ''),
    'Somali': const Locale('so', ''),
    'Albanian': const Locale('sq', ''),
    'Serbian': const Locale('sr', ''),
    'Swedish': const Locale('sv', ''),
    'Tamil': const Locale('ta', ''),
    'Tajik': const Locale('tg', ''),
    'Thai': const Locale('th', ''),
    'Turkmen': const Locale('tk', ''),
    'Turkish': const Locale('tr', ''),
    'Tatar': const Locale('tt', ''),
    'Ukrainian': const Locale('uk', ''),
    'Uighur': const Locale('ug', ''),
    'Urdu': const Locale('ur', ''),
    'Uzbek': const Locale('uz', ''),
    'Vietnamese': const Locale('vi', ''),
    'Chinese': const Locale('zh', ''),
    // Add more languages here
  };

  @override
  Widget build(BuildContext context) {
    final provider = LocaleProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Language',
          style: TextStyle(
            color: Colors.white, // AppBar text color
          ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, // Back button color
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display currently selected language
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Current Language: $_selectedLanguage',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),

          // Search bar (optional)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Search languages',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Implement search functionality
              },
            ),
          ),
          const Divider(),

          // List of available languages
          Expanded(
            child: ListView.builder(
              itemCount: _languages.keys.length,
              itemBuilder: (context, index) {
                final language = _languages.keys.elementAt(index);
                return ListTile(
                  title: Text(language),
                  trailing: language == _selectedLanguage
                      ? const Icon(Icons.check, color: Colors.blue)
                      : null,
                  onTap: () {
                    // Confirm language change
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Change Language'),
                          content: Text(
                              'Do you want to change the language to $language?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _selectedLanguage = language;
                                });
                                provider.onLocaleChange(_languages[language]!);
                                Navigator.of(context).pop();
                              },
                              child: const Text('Yes'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('No'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
