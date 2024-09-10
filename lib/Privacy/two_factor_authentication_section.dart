import 'package:flutter/material.dart';

class TwoFactorAuthenticationScreen extends StatelessWidget {
  const TwoFactorAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Two-Factor Authentication',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Two-Factor Authentication',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'To enhance the security of your account, you can enable Two-Factor Authentication (2FA).',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              '1. Open your account settings and navigate to the security section.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '2. Select "Enable Two-Factor Authentication".',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '3. Follow the instructions to link your account with an authenticator app or SMS.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '4. Save the backup codes provided for future use.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle enabling 2FA (e.g., navigate to a setup page or show instructions)
              },
              child: const Text('Enable 2FA'),
            ),
          ],
        ),
      ),
    );
  }
}
