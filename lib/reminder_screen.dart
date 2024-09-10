import 'package:flutter/material.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Reminders',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Reminder 1'),
          ),
          ListTile(
            title: Text('Reminder 2'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add reminder
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
