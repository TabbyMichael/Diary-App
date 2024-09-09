import 'package:flutter/material.dart';

class ThemeSection extends StatelessWidget {
  const ThemeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.palette),
      title: const Text('Theme'),
      onTap: () {
        Navigator.pushNamed(context, '/theme');
      },
    );
  }
}
