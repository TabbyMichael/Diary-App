import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'FAQ',
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
            title: Text('What is the app about?'),
            subtitle: Text(
                'This app is a digital diary where you can record your daily thoughts, track your mood, and set personal goals. It offers features like password protection, multimedia notes, and daily reminders.'),
          ),
          ListTile(
            title: Text('How do I create a new diary entry?'),
            subtitle: Text(
                'To create a new diary entry, tap on the "New Entry" button on the home screen. You can then add text, photos, or audio recordings to your entry.'),
          ),
          ListTile(
            title: Text('Can I password-protect my diary?'),
            subtitle: Text(
                'Yes, you can set a password to protect your diary. Go to the app settings, find the "Security" section, and enable the password protection feature.'),
          ),
          ListTile(
            title: Text('How do I search for a specific entry?'),
            subtitle: Text(
                'Use the search feature available on the home screen. You can search by keywords, tags, or dates to find specific entries quickly.'),
          ),
          ListTile(
            title: Text('Can I back up my diary entries?'),
            subtitle: Text(
                'Yes, you can back up your diary entries to cloud storage. Go to the settings and select "Backup & Restore" to choose your preferred cloud service for backups.'),
          ),
          ListTile(
            title: Text('How can I delete a diary entry?'),
            subtitle: Text(
                'To delete a diary entry, open the entry you want to remove and tap the "Delete" button. Confirm the action to permanently remove the entry.'),
          ),
          ListTile(
            title: Text('Is my data secure?'),
            subtitle: Text(
                'We take your privacy seriously. Your diary entries are encrypted and stored securely. We also provide options for password protection and data backup to ensure your information remains safe.'),
          ),
          ListTile(
            title: Text('Can I share my diary entries with others?'),
            subtitle: Text(
                'Currently, the app does not support sharing diary entries directly. However, you can export your entries as text files or images and share them manually.'),
          ),
          ListTile(
            title: Text('How do I contact support?'),
            subtitle: Text(
                'If you need assistance or have any questions, you can contact support via email at support@example.com or use the "Contact Us" feature in the app settings.'),
          ),
          ListTile(
            title: Text('What platforms is the app available on?'),
            subtitle: Text(
                'The app is available on both iOS and Android platforms. You can download it from the App Store or Google Play Store.'),
          ),
          ListTile(
            title: Text('How do I update the app?'),
            subtitle: Text(
                'Updates to the app are available through the App Store or Google Play Store. Make sure to enable automatic updates or check manually for updates in the store.'),
          ),
          // Add more FAQ items here if needed
        ],
      ),
    );
  }
}
