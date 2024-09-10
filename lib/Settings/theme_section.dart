import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  bool _isDarkMode = false; // State variable to track dark mode

  @override
  void initState() {
    super.initState();
    _loadThemePreference();
  }

  // Load saved theme preference from local storage
  Future<void> _loadThemePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    });
  }

  // Save theme preference
  Future<void> _saveThemePreference(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Theme Settings',
          style: TextStyle(
            color: Colors.white, // Set AppBar text to white
          ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, // Back button in white
        ),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: _isDarkMode, // This should be the boolean tracking dark mode
            onChanged: (bool value) {
              setState(() {
                _isDarkMode = value;
                _saveThemePreference(value); // Save the theme selection
              });
            },
            activeColor: Colors.blue, // Set active switch color to match AppBar
          ),
          const Divider(),
          ListTile(
            title: const Text('Select Theme Color'),
            onTap: () {
              // Navigate to color picker for custom theme
            },
          ),
          const Divider(),
          ElevatedButton(
            onPressed: () {
              // Apply the selected theme
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Colors.blue, // Make button the same color as AppBar
            ),
            child: const Text(
              'Save Theme',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
