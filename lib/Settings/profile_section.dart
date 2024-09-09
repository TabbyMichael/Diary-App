import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: const Text('Profile'),
      onTap: () {
        Navigator.pushNamed(context, '/profile');
      },
    );
  }
}
