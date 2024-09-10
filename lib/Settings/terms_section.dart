import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms of Service',
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Add Terms of Service content here
              Text(
                'Terms of Service',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16.0),
              // Example text, replace with actual terms
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ...',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              // Add more sections or content as needed
            ],
          ),
        ),
      ),
    );
  }
}
