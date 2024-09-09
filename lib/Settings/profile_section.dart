import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the back arrow (icon) color to white
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Profile Picture and Name
          const Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage:
                    AssetImage('assets/profile.jpg'), // Placeholder image
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adrian',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'adrian@example.com',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),

          // Edit Profile
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Edit Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/edit_profile');
            },
          ),
          const Divider(),

          // Change Password
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Change Password'),
            onTap: () {
              Navigator.pushNamed(context, '/change_password');
            },
          ),
          const Divider(),

          // Account Information
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('Account Information'),
            subtitle: Text('Member since: January 2023'),
          ),
          const Divider(),

          // Linked Accounts
          ListTile(
            leading: const Icon(Icons.link),
            title: const Text('Linked Accounts'),
            onTap: () {
              Navigator.pushNamed(context, '/linked_accounts');
            },
          ),
          const Divider(),

          // Privacy Settings
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/privacy_settings');
            },
          ),
          const Divider(),

          // Delete Account
          ListTile(
            leading: const Icon(Icons.delete_forever, color: Colors.red),
            title: const Text(
              'Delete Account',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              // Add a confirmation dialog before deleting
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Confirm Account Deletion'),
                  content: const Text(
                      'Are you sure you want to delete your account?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add account deletion logic here
                      },
                      child: const Text('Delete'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
