import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('What is the app about?'),
            subtitle: Text('Here is the answer to this question.'),
          ),
          // Add more FAQ items here
        ],
      ),
    );
  }
}
