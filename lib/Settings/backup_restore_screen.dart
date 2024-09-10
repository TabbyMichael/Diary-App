import 'package:flutter/material.dart';

class BackupRestoreScreen extends StatelessWidget {
  const BackupRestoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Backup & Restore',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, // Set back button color
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                // Backup data
              },
              child: const Text('Backup Data'),
            ),
            ElevatedButton(
              onPressed: () {
                // Restore data
              },
              child: const Text('Restore Data'),
            ),
            const Divider(),
            const Text(
              'Last Backup: 12th Sept, 2024 10:30 AM',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Toggle automatic backup
              },
              child: const Text('Enable Automatic Backup'),
            ),
          ],
        ),
      ),
    );
  }
}
