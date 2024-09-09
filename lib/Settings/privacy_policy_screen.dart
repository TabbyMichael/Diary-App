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
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the icon color to white
        ),
      ),
      body: ListView(
        children: [
          // Change Password Section
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Change Password'),
            onTap: () {
              // Navigate to Change Password Screen
              Navigator.pushNamed(context, '/change_password');
            },
          ),
          const Divider(),

          // Enable Encryption Section
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('Enable Encryption'),
            onTap: () {
              // Navigate to Encryption Settings Screen
              Navigator.pushNamed(context, '/enable_encryption');
            },
          ),
          const Divider(),

          // Two-Factor Authentication Section
          ListTile(
            leading: const Icon(Icons.two_wheeler),
            title: const Text('Two-Factor Authentication'),
            onTap: () {
              // Navigate to 2FA Setup Screen
              Navigator.pushNamed(context, '/two_factor_authentication');
            },
          ),
          const Divider(),

          // Privacy Settings Section
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Settings'),
            onTap: () {
              // Navigate to Privacy Settings Screen
              Navigator.pushNamed(context, '/privacy_settings');
            },
          ),
          const Divider(),

          // Login History Section
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Login History'),
            onTap: () {
              // Navigate to Login History Screen
              Navigator.pushNamed(context, '/login_history');
            },
          ),
          const Divider(),

          // App Permissions Section
          ListTile(
            leading: const Icon(Icons.perm_device_information),
            title: const Text('App Permissions'),
            onTap: () {
              // Navigate to App Permissions Screen
              Navigator.pushNamed(context, '/app_permissions');
            },
          ),
          const Divider(),

          // Security Tips Section
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Security Tips'),
            onTap: () {
              // Navigate to Security Tips Screen
              Navigator.pushNamed(context, '/security_tips');
            },
          ),
          const Divider(),

          // Contact Support Section
          ListTile(
            leading: const Icon(Icons.support),
            title: const Text('Contact Support'),
            onTap: () {
              // Navigate to Contact Support Screen
              Navigator.pushNamed(context, '/contact_support');
            },
          ),

          const Divider(),
        ],
      ),
    );
  }
}
