import 'package:flutter/material.dart';

class PrivacySecuritySection extends StatelessWidget {
  const PrivacySecuritySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.lock),
      title: const Text('Privacy & Security'),
      onTap: () {
        Navigator.pushNamed(context, '/privacy_security');
      },
    );
  }
}
