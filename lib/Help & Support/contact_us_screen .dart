import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Name'),
            const SizedBox(height: 8), // Add spacing between label and field
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your name',
              ),
            ),
            const SizedBox(height: 16), // Add spacing between fields

            const Text('Email'),
            const SizedBox(height: 8), // Add spacing between label and field
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 16), // Add spacing between fields

            const Text('Message'),
            const SizedBox(height: 8), // Add spacing between label and field
            const Flexible(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your message',
                ),
                minLines: 6, // Minimum lines when collapsed
                maxLines: 10, // Maximum lines when expanded
              ),
            ),
            const SizedBox(height: 20),

            Center(
              // Center the button
              child: ElevatedButton(
                onPressed: () {
                  // Handle contact form submission
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // White text
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32, vertical: 12), // Button padding
                ),
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
