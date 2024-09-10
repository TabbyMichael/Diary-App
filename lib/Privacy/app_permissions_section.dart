import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart';

class AppPermissionsScreen extends StatelessWidget {
  const AppPermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App Permissions',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Location Access'),
            subtitle: const Text('Currently granted'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () async {
              await openAppSettings(); // Opens the app settings
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.camera),
            title: const Text('Camera Access'),
            subtitle: const Text('Currently denied'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () async {
              await openAppSettings(); // Opens the app settings
            },
          ),
          const Divider(),
          // Add more ListTile widgets for other permissions
        ],
      ),
    );
  }
}
