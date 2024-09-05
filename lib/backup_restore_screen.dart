import 'package:flutter/material.dart';

class BackupRestoreScreen extends StatelessWidget {
  const BackupRestoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Backup & Restore',
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Backup data
            },
            child: const Text(
              'Backup Data',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Restore data
            },
            child: const Text(
              'Restore Data',
            ),
          ),
        ],
      ),
    );
  }
}
