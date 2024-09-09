import 'package:flutter/material.dart';

class AboutHelpScreen extends StatelessWidget {
  const AboutHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About & Help'),
      ),
      body: const Column(
        children: [
          Text(
            'App Version: 1.0.0',
          ),
          Text(
            'Contact Support: support@example.com',
          ),
          Text(
            'FAQ and User Guide',
          ),
        ],
      ),
    );
  }
}
