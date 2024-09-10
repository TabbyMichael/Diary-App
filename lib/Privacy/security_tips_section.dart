import 'package:flutter/material.dart';

class SecurityTipsScreen extends StatelessWidget {
  const SecurityTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Security Tips',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Enhance Your Security',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
            ),
            const SizedBox(height: 20),
            _buildTip(
              context,
              icon: Icons.lock,
              title: 'Use a Strong, Unique Password',
              description:
                  'Create a password that combines letters, numbers, and special characters. Avoid using the same password across multiple accounts.',
            ),
            _buildTip(
              context,
              icon: Icons.security,
              title: 'Enable Two-Factor Authentication (2FA)',
              description:
                  'Add an extra layer of security to your account by enabling 2FA. This requires a second form of verification in addition to your password.',
            ),
            _buildTip(
              context,
              icon: Icons.warning,
              title: 'Be Cautious of Phishing Attempts',
              description:
                  'Do not click on suspicious links or provide personal information through unverified channels. Verify the source before responding to requests.',
            ),
            _buildTip(
              context,
              icon: Icons.update,
              title: 'Regularly Update Your Software',
              description:
                  'Keep your software and apps up-to-date to protect against known vulnerabilities and threats. Check for updates frequently.',
            ),
            _buildTip(
              context,
              icon: Icons.visibility,
              title: 'Monitor Your Account Activity',
              description:
                  'Regularly review your account activity for any unauthorized access. Report any suspicious behavior immediately.',
            ),
            const SizedBox(height: 20),
            Text(
              'For more security tips, visit our [Support Center](#).',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTip(BuildContext context,
      {required IconData icon,
      required String title,
      required String description}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 4.0,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          description,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
