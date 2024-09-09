import 'package:flutter/material.dart';

class NotificationsSection extends StatelessWidget {
  const NotificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notifications),
      title: const Text('Notifications'),
      onTap: () {
        Navigator.pushNamed(context, '/notifications');
      },
    );
  }
}
