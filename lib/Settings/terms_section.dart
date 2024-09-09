import 'package:flutter/material.dart';

class TermsSection extends StatelessWidget {
  const TermsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.article),
      title: const Text('Terms of Service'),
      onTap: () {
        Navigator.pushNamed(context, '/terms');
      },
    );
  }
}
