import 'package:flutter/material.dart';

class AccountInformationScreen extends StatelessWidget {
  const AccountInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Information'),
        backgroundColor: Colors.blue,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Account Information Fields
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Name'),
              subtitle: Text('Adrian'), // Static user name, can be dynamic
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle:
                  Text('adrian@example.com'), // Static email, can be dynamic
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text('Member Since'),
              subtitle: Text(
                  'January 2023'), // Static membership date, can be dynamic
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('User ID'),
              subtitle: Text('12345XYZ'), // Static user ID, can be dynamic
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Account Status'),
              subtitle: Text('Verified'), // Account status, can be dynamic
            ),
          ],
        ),
      ),
    );
  }
}
