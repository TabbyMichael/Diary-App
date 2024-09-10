import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '1. Data Collection',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We collect the following information from users: personal information such as name, email, and usage data like app interactions.',
            ),
            SizedBox(height: 16),
            Text(
              '2. Data Usage',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'The data collected is used to improve the app experience, for personalized content, and for analytical purposes.',
            ),
            SizedBox(height: 16),
            Text(
              '3. Data Storage and Security',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'User data is securely stored on our servers, and we implement measures to protect it from unauthorized access.',
            ),
            SizedBox(height: 16),
            Text(
              '4. User Rights',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Users have the right to access, modify, or delete their personal information. They can contact support@example.com for assistance.',
            ),
            SizedBox(height: 16),
            Text(
              '5. Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'For any privacy-related concerns, please reach out to us at privacy@example.com.',
            ),
          ],
        ),
      ),
    );
  }
}
