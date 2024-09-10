import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class AppPermissionsScreen extends StatefulWidget {
  const AppPermissionsScreen({super.key});

  @override
  _AppPermissionsScreenState createState() => _AppPermissionsScreenState();
}

class _AppPermissionsScreenState extends State<AppPermissionsScreen> {
  // Method to check permission status
  Future<String> _getPermissionStatus(Permission permission) async {
    final status = await permission.status;
    if (status.isGranted) {
      return 'Granted';
    } else if (status.isDenied) {
      return 'Denied';
    } else if (status.isRestricted) {
      return 'Restricted';
    } else if (status.isPermanentlyDenied) {
      return 'Permanently Denied';
    }
    return 'Unknown';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'App Permissions',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        // Fetch permission statuses
        future: Future.wait([
          _getPermissionStatus(Permission.location),
          _getPermissionStatus(Permission.camera),
          _getPermissionStatus(Permission.microphone),
          _getPermissionStatus(Permission.storage),
          _getPermissionStatus(Permission.contacts),
          // Add more permissions as needed
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error fetching permissions'));
          }

          final statuses = snapshot.data as List<String>;

          return ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('Location Access'),
                subtitle: Text('Currently ${statuses[0]}'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () async {
                  await openAppSettings();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Camera Access'),
                subtitle: Text('Currently ${statuses[1]}'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () async {
                  await openAppSettings();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.mic),
                title: const Text('Microphone Access'),
                subtitle: Text('Currently ${statuses[2]}'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () async {
                  await openAppSettings();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.storage),
                title: const Text('Storage Access'),
                subtitle: Text('Currently ${statuses[3]}'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () async {
                  await openAppSettings();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.contacts),
                title: const Text('Contacts Access'),
                subtitle: Text('Currently ${statuses[4]}'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () async {
                  await openAppSettings();
                },
              ),
              const Divider(),
              // Add more ListTile widgets for other permissions
            ],
          );
        },
      ),
    );
  }
}
