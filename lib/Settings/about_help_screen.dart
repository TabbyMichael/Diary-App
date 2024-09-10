import 'package:flutter/material.dart';

class AboutHelpScreen extends StatelessWidget {
  const AboutHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About & Help'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              // Optional: Provide more information or redirect to another screen
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Card(
              margin: EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('App Version'),
                subtitle: Text('1.0.0'),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Contact Support'),
                subtitle: const Text('support@example.com'),
                onTap: () {
                  // Open email client or show dialog
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: const Icon(Icons.question_answer),
                title: const Text('FAQ and User Guide'),
                onTap: () {
                  // Navigate to FAQ or User Guide
                },
              ),
            ),
            // Add more cards or widgets here if needed
          ],
        ),
      ),
    );
  }
}
