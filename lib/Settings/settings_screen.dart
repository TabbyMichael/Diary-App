import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Settings',
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
          // Profile Section
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          const Divider(),

          // Backup and Restore Section
          ListTile(
            leading: const Icon(Icons.backup),
            title: const Text('Backup and Restore'),
            onTap: () {
              Navigator.pushNamed(context, '/backup_restore');
            },
          ),
          const Divider(),

          // Privacy & Security Section
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Privacy & Security'),
            onTap: () {
              Navigator.pushNamed(context, '/privacy_security');
            },
          ),
          const Divider(),

          // General Settings
          ListTile(
            leading: const Icon(Icons.palette),
            title: const Text('Theme'),
            onTap: () {
              Navigator.pushNamed(context, '/theme');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            onTap: () {
              Navigator.pushNamed(context, '/language');
            },
          ),
          const Divider(),

          // Help & Support
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help & Support'),
            onTap: () {
              Navigator.pushNamed(context, '/help_support');
            },
          ),
          const Divider(),

          // About and Legal
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About App'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.article),
            title: const Text('Terms of Service'),
            onTap: () {
              Navigator.pushNamed(context, '/terms');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Policy'),
            onTap: () {
              Navigator.pushNamed(context, '/privacy_policy');
            },
          ),
        ],
      ),
    );
  }
}
