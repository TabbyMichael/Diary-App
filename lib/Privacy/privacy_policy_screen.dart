import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '1. Introduction',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Welcome to our Privacy Policy. This policy outlines how we collect, use, and protect your information. By using our app, you agree to the terms described herein.',
            ),
            SizedBox(height: 16),
            Text(
              '2. Data Collection',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We collect the following information from users: personal information such as name, email, and usage data like app interactions. This data is collected through user input, cookies, and analytics tools.',
            ),
            SizedBox(height: 16),
            Text(
              '3. Data Usage',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'The data collected is used to improve the app experience, personalize content, and for analytical purposes. The legal basis for processing this data includes user consent and contractual necessity.',
            ),
            SizedBox(height: 16),
            Text(
              '4. Data Storage and Security',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'User data is securely stored on our servers. We implement measures such as encryption and access controls to protect data from unauthorized access.',
            ),
            SizedBox(height: 16),
            Text(
              '5. Data Sharing and Disclosure',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We may share data with third parties such as service providers and partners. Data may also be disclosed to comply with legal obligations or in emergency situations.',
            ),
            SizedBox(height: 16),
            Text(
              '6. User Rights',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Users have the right to access, correct, or delete their personal information. For assistance, please contact support@example.com.',
            ),
            SizedBox(height: 16),
            Text(
              '7. Cookies and Tracking Technologies',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We use cookies and other tracking technologies to enhance user experience and for analytical purposes. Users can manage cookies through their browser settings.',
            ),
            SizedBox(height: 16),
            Text(
              '8. Changes to the Privacy Policy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We may update this privacy policy from time to time. Changes will be communicated through app updates or notifications. The effective date of the current policy is [Effective Date].',
            ),
            SizedBox(height: 16),
            Text(
              '9. Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'For any privacy-related concerns, please contact us at privacy@example.com.',
            ),
            SizedBox(height: 16),
            Text(
              '10. Jurisdiction',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'This policy is governed by the laws of [Your Jurisdiction]. Any disputes will be handled in accordance with these laws.',
            ),
            SizedBox(height: 16),
            Text(
              '11. Children’s Privacy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Our app does not target children under the age of 13. We do not knowingly collect personal information from children under 13. If we become aware of such information, we will take steps to delete it.',
            ),
            SizedBox(height: 16),
            Text(
              '12. International Transfers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Data may be transferred to and processed in countries other than your own. We will ensure that adequate safeguards are in place to protect your data during such transfers.',
            ),
            SizedBox(height: 16),
            Text(
              '13. Data Retention',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We retain user data only as long as necessary to fulfill the purposes for which it was collected or as required by law. Data retention periods are determined based on the type of data and its purpose.',
            ),
          ],
        ),
      ),
    );
  }
}
