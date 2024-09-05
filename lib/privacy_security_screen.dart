import 'package:flutter/material.dart';

class PrivacySecurityScreen extends StatelessWidget {
  const PrivacySecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Privacy & Security',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const Column(
        children: [
          ListTile(
            title: Text(
              'Change Password',
            ),
          ),
          ListTile(
            title: Text(
              'Enable Encryption',
            ),
          ),
        ],
      ),
    );
  }
}
