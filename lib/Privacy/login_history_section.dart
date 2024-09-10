import 'package:flutter/material.dart';

class LoginHistoryScreen extends StatelessWidget {
  const LoginHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            // Sample login history items
            ListTile(
              title: Text('Login at 2024-09-01 08:30 AM'),
              subtitle: Text('IP: 192.168.1.1'),
            ),
            ListTile(
              title: Text('Login at 2024-09-02 09:15 AM'),
              subtitle: Text('IP: 192.168.1.2'),
            ),
            // Add more items here
          ],
        ),
      ),
    );
  }
}
