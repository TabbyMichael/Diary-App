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
            leading: const Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          const Divider(),

          // Backup and Restore Section
          ListTile(
            leading: const Icon(
              Icons.backup,
              color: Colors.blue,
            ),
            title: const Text(
              'Backup and Restore',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/backup_restore');
            },
          ),
          const Divider(),

          // Privacy & Security Section
          ListTile(
            leading: const Icon(
              Icons.lock,
              color: Colors.blue,
            ),
            title: const Text(
              'Privacy & Security',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/privacy_security');
            },
          ),
          const Divider(),

          // General Settings
          ListTile(
            leading: const Icon(
              Icons.palette,
              color: Colors.blue,
            ),
            title: const Text(
              'Theme',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/theme');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
            title: const Text(
              'Notifications',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(
              Icons.language,
              color: Colors.blue,
            ),
            title: const Text(
              'Language',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/language');
            },
          ),
          const Divider(),

          // Help & Support
          ListTile(
            leading: const Icon(
              Icons.help,
              color: Colors.blue,
            ),
            title: const Text(
              'Help & Support',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/help_support');
            },
          ),
          const Divider(),

          // About and Legal
          ListTile(
            leading: const Icon(
              Icons.info,
              color: Colors.blue,
            ),
            title: const Text(
              'About App',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(
              Icons.article,
              color: Colors.blue,
            ),
            title: const Text(
              'Terms of Service',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/terms');
            },
          ),
          const Divider(),

          ListTile(
            leading: const Icon(
              Icons.privacy_tip,
              color: Colors.blue,
            ),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/privacy_policy');
            },
          ),
        ],
      ),
    );
  }
}
