import 'package:flutter/material.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.language),
      title: const Text('Language'),
      onTap: () {
        Navigator.pushNamed(context, '/language');
      },
    );
  }
}
