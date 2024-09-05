import 'package:flutter/material.dart';

class MoodTrackingScreen extends StatelessWidget {
  const MoodTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mood Tracking',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          'Mood Tracking Chart or List',
        ),
      ),
    );
  }
}
