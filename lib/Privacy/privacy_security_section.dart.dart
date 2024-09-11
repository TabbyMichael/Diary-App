import 'package:flutter/material.dart';

class PrivacySecurityScreen extends StatelessWidget {
  const PrivacySecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Privacy & Security',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
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
            leading: const Icon(
              Icons.lock,
              color: Colors.blue,
            ),
            title: const Text(
              'Change Password',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Navigate to Change Password Screen
              Navigator.pushNamed(context, '/forgot_password');
            },
          ),
          const Divider(),

          // Enable Encryption Section
          ListTile(
            leading: const Icon(
              Icons.security,
              color: Colors.blue,
            ),
            title: const Text(
              'Enable Encryption',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Navigate to Encryption Settings Screen
              Navigator.pushNamed(context, '/enable_encryption');
            },
          ),
          const Divider(),

          // Two-Factor Authentication Section
          ListTile(
            leading: const Icon(
              Icons.two_wheeler,
              color: Colors.blue,
            ),
            title: const Text(
              'Two-Factor Authentication',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Navigate to 2FA Setup Screen
              Navigator.pushNamed(context, '/two_factor_authentication');
            },
          ),
          const Divider(),

          // Login History Section
          ListTile(
            leading: const Icon(
              Icons.history,
              color: Colors.blue,
            ),
            title: const Text(
              'Login History',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Navigate to Login History Screen
              Navigator.pushNamed(context, '/login_history');
            },
          ),
          const Divider(),

          // App Permissions Section
          ListTile(
            leading: const Icon(
              Icons.perm_device_information,
              color: Colors.blue,
            ),
            title: const Text(
              'App Permissions',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Navigate to App Permissions Screen
              Navigator.pushNamed(context, '/app_permissions');
            },
          ),
          const Divider(),

          // Security Tips Section
          ListTile(
            leading: const Icon(
              Icons.info,
              color: Colors.blue,
            ),
            title: const Text(
              'Security Tips',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Navigate to Security Tips Screen
              Navigator.pushNamed(context, '/security_tips');
            },
          ),
          const Divider(),

          // Contact Support Section
          ListTile(
            leading: const Icon(
              Icons.support,
              color: Colors.blue,
            ),
            title: const Text(
              'Contact Support',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              // Navigate to Contact Support Screen
              Navigator.pushNamed(context, '/contact_us');
            },
          ),

          const Divider(),
        ],
      ),
    );
  }
}
