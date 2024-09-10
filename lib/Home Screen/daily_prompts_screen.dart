import 'package:flutter/material.dart';

class DailyPromptsScreen extends StatelessWidget {
  const DailyPromptsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daily Prompts',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text(
              'Prompt 1',
            ),
          ),
          ListTile(
            title: Text(
              'Prompt 2',
            ),
          ),
        ],
      ),
    );
  }
}
