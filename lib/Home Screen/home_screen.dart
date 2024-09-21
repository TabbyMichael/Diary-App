import 'package:diary/Home%20Screen/diary_entry_notifier.dart';
import 'package:diary/Home%20Screen/entry_list.dart';
import 'package:flutter/material.dart';
import 'edit_diary_entry_screen.dart'; // Import the EditDiaryEntryScreen
import 'calendar_screen.dart'; // Import your CalendarScreen
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<DiaryEntryNotifier>(context);

    // Method to show the confirmation dialog
    Future<void> _showDeleteDialog(BuildContext context, int entryId) async {
      return showDialog<void>(
        context: context,
        barrierDismissible:
            false, // The dialog cannot be dismissed by tapping outside
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Delete Entry'),
            content: const Text('Are you sure you want to delete this entry?'),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
              TextButton(
                child: const Text('Yes'),
                onPressed: () {
                  notifier.deleteEntry(
                      entryId); // Delete the entry (now passed as an int)
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Diary',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Message
              const Text(
                'Good Morning, Adrian!',
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
                      settings: RouteSettings(
                        arguments: {
                          'start': DateTime.now(),
                          'end': DateTime.now().add(
                              Duration(hours: 23, minutes: 59, seconds: 59)),
                        },
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),

              // Recent Entries directly after Today's Entry
              ...notifier.entries.map((entry) {
                return ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    entry['title'] ?? 'No Title',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    '${entry['snippet'] ?? 'No Snippet'} \n${entry['date']}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.black),
                    onPressed: () {
                      _showDeleteDialog(context,
                          int.parse(entry['id'])); // Ensure entryId is an int
                    },
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditDiaryEntryScreen(
                          entryId:
                              int.parse(entry['id']), // Pass entryId as an int
                          initialTitle: entry['title'] ?? 'No Title',
                          initialContent: entry['content'] ?? 'No Content',
                          initialDate: entry['date'] ?? 'No Date',
                          initialCategory: entry['category'] ?? 'No Category',
                        ),
                      ),
                    ).then((_) => notifier.loadEntries()); // Refresh entries
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
