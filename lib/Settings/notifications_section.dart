import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool _notificationsEnabled = true;
  bool _soundEnabled = true;
  bool _vibrationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.white, // AppBar text color
          ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, // Back button color
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Notification Toggle
          SwitchListTile(
            title: const Text('Enable Notifications'),
            value: _notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
            activeColor: Colors.blue,
          ),
          const Divider(),

          // Notification Types
          const Text(
            'Notification Types',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          CheckboxListTile(
            title: const Text('App Updates'),
            value: _soundEnabled,
            onChanged: (bool? value) {
              setState(() {
                _soundEnabled = value ?? false;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Promotions'),
            value: _vibrationEnabled,
            onChanged: (bool? value) {
              setState(() {
                _vibrationEnabled = value ?? false;
              });
            },
          ),
          // Add more types as needed
          const Divider(),

          // Sound and Vibration Settings
          SwitchListTile(
            title: const Text('Enable Sound'),
            value: _soundEnabled,
            onChanged: (bool value) {
              setState(() {
                _soundEnabled = value;
              });
            },
            activeColor: Colors.blue,
          ),
          SwitchListTile(
            title: const Text('Enable Vibration'),
            value: _vibrationEnabled,
            onChanged: (bool value) {
              setState(() {
                _vibrationEnabled = value;
              });
            },
            activeColor: Colors.blue,
          ),
          const Divider(),

          // Notification History (optional)
          ListTile(
            title: const Text('Notification History'),
            trailing: const Icon(Icons.history),
            onTap: () {
              // Navigate to notification history
            },
          ),
          const Divider(),
          // ignore: prefer_const_constructors
          SizedBox(height: 20),

          // Clear Notification History (optional)
          ElevatedButton(
            onPressed: () {
              // Clear all notifications
            },
            // ignore: sort_child_properties_last
            child: const Text(
              'Clear Notification History',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
