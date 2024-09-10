import 'package:flutter/material.dart';

class EnableEncryptionScreen extends StatelessWidget {
  const EnableEncryptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enable Encryption'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Encryption Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Encryption helps protect your data from unauthorized access. You can enable or disable encryption for your data here.',
            ),
            const SizedBox(height: 20),
            SwitchListTile(
              title: const Text('Enable Encryption'),
              subtitle: const Text('Currently disabled'),
              value: false, // Update this value based on encryption status
              onChanged: (bool value) {
                // Handle the switch change (e.g., enable/disable encryption)
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle save or apply encryption settings
              },
              child: const Text('Save Settings'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // White text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
