import 'package:diary/Home%20Screen/entry_list.dart';
import 'package:flutter/material.dart';
import 'edit_diary_entry_screen.dart'; // Import the EditDiaryEntryScreen
import 'calendar_screen.dart'; // Import your CalendarScreen

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> entries = [
    {
      'title': 'Entry Title 1',
      'snippet': 'Snippet of the entry...',
      'date': DateTime.now(),
      'content': 'Content of Entry Title 1'
    },
    {
      'title': 'Entry Title 2',
      'snippet': 'Snippet of the entry...',
      'date': DateTime.now().subtract(
        const Duration(days: 1),
      ),
      'content': 'Content of Entry Title 2'
    },
    {
      'title': 'Entry Title 3',
      'snippet': 'Snippet of the entry...',
      'date': DateTime.now().subtract(
        const Duration(days: 2),
      ),
      'content': 'Content of Entry Title 3'
    },
  ];

  void _deleteEntry(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Entry'),
          content: const Text(
            'Are you sure you want to delete this entry?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text(
                'Cancel',
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  entries.removeAt(index);
                });
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text(
                'Delete',
              ),
            ),
          ],
        );
      },
    );
  }

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
            ...entries.asMap().entries.map((entry) {
              int index = entry.key;
              Map<String, dynamic> entryData = entry.value;
              return ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  entryData['title'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  '${entryData['snippet']} \n${entryData['date'].toLocal()}'
                      .split(' ')[0], // Date format: yyyy-mm-dd
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.black),
                  onPressed: () {
                    _deleteEntry(index);
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditDiaryEntryScreen(
                        initialContent: entryData['content'],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
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
              trailing: const Icon(
                Icons.calendar_today,
                color: Colors.blue,
              ),
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
}
