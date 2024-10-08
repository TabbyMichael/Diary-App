import 'package:flutter/material.dart';

class AboutHelpScreen extends StatelessWidget {
  const AboutHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'About',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
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
            const Card(
              margin: EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Build Number'),
                subtitle: Text('1001'),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Contact Support'),
                subtitle: const Text('support@example.com'),
                onTap: () {
                  Navigator.pushNamed(context, '/contact_us');
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: const Icon(Icons.question_answer),
                title: const Text('FAQ and User Guide'),
                onTap: () {
                  Navigator.pushNamed(context, '/faq');
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: const Icon(Icons.policy),
                title: const Text('Privacy Policy'),
                onTap: () {
                  Navigator.pushNamed(context, '/privacy_policy');
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                leading: const Icon(Icons.article),
                title: const Text('Terms of Service'),
                onTap: () {
                  Navigator.pushNamed(context, '/terms');
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
