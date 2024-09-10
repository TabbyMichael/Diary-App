import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  File? _profileImage;

  Future<void> _pickImage() async {
    final status = await Permission.photos.status;
    if (!status.isGranted) {
      final result = await Permission.photos.request();
      if (result.isGranted) {
        _openImagePicker();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Photo library permission not granted')),
        );
      }
    } else {
      _openImagePicker();
    }
  }

  void _openImagePicker() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _profileImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
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
          Row(
            children: [
              GestureDetector(
                onTap: _pickImage, // Trigger image picker
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: _profileImage != null
                      ? FileImage(_profileImage!)
                      : const AssetImage('assets/profile.jpg') as ImageProvider,
                ),
              ),
              const SizedBox(width: 20),
              const Column(
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
              Navigator.pushNamed(context, '/forgot_password');
            },
          ),
          const Divider(),

          // Account Information
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Account Information'),
            onTap: () {
              Navigator.pushNamed(context, '/accounts_information');
            },
          ),
          const Divider(),

          // Linked Accounts
          ListTile(
            leading: const Icon(Icons.people),
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
              Navigator.pushNamed(context, '/privacy_security');
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
              Navigator.pushNamed(context, '/delete_account');
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
