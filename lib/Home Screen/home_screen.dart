import 'package:diary/Home%20Screen/entry_list.dart';
import 'package:flutter/material.dart';
import 'calendar_screen.dart'; // Import your CalendarScreenimport 'entry_list_screen.dart'; // Import your EntryListScreen
import 'entry_screen.dart'; // Import your EntryScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    const userName = 'Adrian'; // Replace with dynamic user data if available

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Diary',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/settings',
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Message
            const Text(
              'Good Morning, $userName!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Daily Quote or Inspiration
            const Text(
              '"Start each day with a positive thought and a grateful heart."',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            // Today's Entry Section
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: const Text(
                'Today\'s Entry',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'View or add today\'s diary entry.',
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EntryListScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            // Recent Entries directly after Today's Entry
            _buildEntryTile(
              context,
              'Entry Title 1',
              'Snippet of the entry...',
              today,
            ),
            _buildEntryTile(
              context,
              'Entry Title 2',
              'Snippet of the entry...',
              today.subtract(
                const Duration(days: 1),
              ),
            ),
            _buildEntryTile(
              context,
              'Entry Title 3',
              'Snippet of the entry...',
              today.subtract(
                const Duration(days: 2),
              ),
            ),
            const SizedBox(height: 20),

            // Calendar View Section
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: const Text(
                'Calendar View',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'View entries by date.',
              ),
              trailing: const Icon(Icons.calendar_today, color: Colors.blue),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CalendarScreen(),
                  ), // Navigate to CalendarScreen
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/entry',
          );
        },
        backgroundColor: Colors.blue, // Blue color for the button
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }

  Widget _buildEntryTile(
      BuildContext context, String title, String snippet, DateTime date) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        '$snippet \n${date.toLocal()}'.split(' ')[0], // Date format: yyyy-mm-dd
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EntryListScreen(),
          ),
        );
      },
    );
  }
}
