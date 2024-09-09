import 'package:flutter/material.dart';

class HelpSupportSection extends StatelessWidget {
  const HelpSupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.help),
      title: const Text('Help & Support'),
      onTap: () {
        Navigator.pushNamed(context, '/help_support');
      },
    );
  }
}
