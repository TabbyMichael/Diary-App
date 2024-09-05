import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
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
              'Profile',
            ),
          ),
          ListTile(
            title: Text(
              'Backup and Restore',
            ),
          ),
          ListTile(
            title: Text(
              'Privacy & Security',
            ),
          ),
        ],
      ),
    );
  }
}
