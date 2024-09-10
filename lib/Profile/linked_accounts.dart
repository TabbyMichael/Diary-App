import 'package:flutter/material.dart';

class LinkedAccountsScreen extends StatefulWidget {
  const LinkedAccountsScreen({super.key});

  @override
  _LinkedAccountsScreenState createState() => _LinkedAccountsScreenState();
}

class _LinkedAccountsScreenState extends State<LinkedAccountsScreen> {
  bool isGoogleLinked = true;
  bool isFacebookLinked = false;
  bool isTwitterLinked = false;
  bool isInstagramLinked = false;
  bool isWhatsAppLinked = false;
  bool isTikTokLinked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Linked Accounts',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: ListView(
          children: [
            const Divider(),
            // Google Account
            ListTile(
              leading: Image.asset(
                'assets/google_logo.png',
                width: 30,
                height: 30,
              ),
              title: const Text('Google Account'),
              trailing: Switch(
                value: isGoogleLinked,
                onChanged: (bool value) {
                  setState(() {
                    isGoogleLinked = value;
                  });
                },
              ),
            ),
            const Divider(),

            // Facebook Account
            ListTile(
              leading: Image.asset(
                'assets/facebook_logo.png',
                width: 30,
                height: 30,
              ),
              title: const Text('Facebook Account'),
              trailing: Switch(
                value: isFacebookLinked,
                onChanged: (bool value) {
                  setState(() {
                    isFacebookLinked = value;
                  });
                },
              ),
            ),
            const Divider(),

            // X (formerly Twitter)
            ListTile(
              leading: Image.asset(
                'assets/twitter_logo.png', // Ensure you update the logo as X
                width: 30,
                height: 30,
              ),
              title: const Text('X (formerly Twitter) Account'),
              trailing: Switch(
                value: isTwitterLinked,
                onChanged: (bool value) {
                  setState(() {
                    isTwitterLinked = value;
                  });
                },
              ),
            ),
            const Divider(),

            // Instagram Account
            ListTile(
              leading: Image.asset(
                'assets/instagram_logo.png',
                width: 30,
                height: 30,
              ),
              title: const Text('Instagram Account'),
              trailing: Switch(
                value: isInstagramLinked,
                onChanged: (bool value) {
                  setState(() {
                    isInstagramLinked = value;
                  });
                },
              ),
            ),
            const Divider(),

            // WhatsApp Account
            ListTile(
              leading: Image.asset(
                'assets/whatsapp_logo.png',
                width: 30,
                height: 30,
              ),
              title: const Text('WhatsApp Account'),
              trailing: Switch(
                value: isWhatsAppLinked,
                onChanged: (bool value) {
                  setState(() {
                    isWhatsAppLinked = value;
                  });
                },
              ),
            ),
            const Divider(),

            // TikTok Account
            ListTile(
              leading: Image.asset(
                'assets/tiktok_logo.png',
                width: 30,
                height: 30,
              ),
              title: const Text('TikTok Account'),
              trailing: Switch(
                value: isTikTokLinked,
                onChanged: (bool value) {
                  setState(() {
                    isTikTokLinked = value;
                  });
                },
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
