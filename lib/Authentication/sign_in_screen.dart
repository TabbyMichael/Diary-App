import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
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
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align labels and fields to the start
          children: [
            const Text('Email'),
            const SizedBox(height: 8), // Space between label and text field
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 16), // Space between fields

            const Text('Password'),
            const SizedBox(height: 8), // Space between label and text field
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 20), // Space before button

            Center(
              // Center the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/home',
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // White text
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32, vertical: 12), // Button padding
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 12), // Space before Forgot Password link

            Center(
              // Center the Forgot Password link
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/forgot-password',
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue, // Blue text
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
