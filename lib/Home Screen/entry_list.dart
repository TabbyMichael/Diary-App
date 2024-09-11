import 'package:flutter/material.dart';
import 'package:diary/Storage/database_helper.dart'; // Assuming you have a DatabaseHelper class for DB operations

class EntryListScreen extends StatefulWidget {
  const EntryListScreen({super.key});

  @override
  _EntryListScreenState createState() => _EntryListScreenState();
}

class _EntryListScreenState extends State<EntryListScreen> {
  List<Map<String, dynamic>> _entries = [];
  bool _loading = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _fetchEntries(); // Ensure this method is called after dependencies are ready.
  }

  // Fetch entries from the database based on date
  Future<void> _fetchEntries() async {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map?;
    final DateTime today = DateTime.now();
    final DateTime startDate =
        arguments?['start'] ?? DateTime(today.year, today.month, today.day);
    final DateTime endDate = arguments?['end'] ??
        DateTime(today.year, today.month, today.day, 23, 59, 59, 999);

    print('Fetching entries from $startDate to $endDate'); // Debugging

    // Fetching entries from the database
    final dbHelper = DatabaseHelper();
    final allEntries = await dbHelper.getEntries();

    // Filter entries by date range
    final entries = allEntries.where((entry) {
      final entryDate = DateTime.parse(entry['date']);
      return entryDate.isAfter(startDate.subtract(Duration(seconds: 1))) &&
          entryDate.isBefore(endDate.add(Duration(seconds: 1)));
    }).toList();

    print('Filtered entries: $entries'); // Debugging

    // Update the state
    if (mounted) {
      setState(() {
        _entries = entries;
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Diary Entries',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _entries.isEmpty
              ? const Center(child: Text('No entries found'))
              : ListView.builder(
                  itemCount: _entries.length,
                  itemBuilder: (context, index) {
                    final entry = _entries[index];
                    return ListTile(
                      title: Text(entry['title'] ?? 'Untitled Entry'),
                      subtitle: Text(entry['date'] ?? ''),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/entry-detail',
                          arguments: {'entryId': entry['id']},
                        );
                      },
                    );
                  },
                ),
    );
  }
}
