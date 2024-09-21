import 'package:flutter/material.dart'; // Import the necessary Flutter package
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Initialize the database
  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "diary.db");

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  // Create the table
  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE entries (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        content TEXT NOT NULL,
        date TEXT NOT NULL,
        category TEXT
      )
    ''');
  }

  // Insert a new entry into the database
  Future<int> insertEntry(Map<String, dynamic> entry) async {
    Database db = await database;

    // Ensure the required fields are provided
    if (!_validateEntry(entry)) {
      throw ArgumentError('Missing required fields: title, content, or date');
    }

    // Validate date format
    if (!_isValidDate(entry['date'])) {
      throw ArgumentError('Invalid date format');
    }

    try {
      int id = await db.insert('entries', entry);
      print("Inserted entry with ID: $id");
      return id;
    } catch (e) {
      print('Error inserting entry: $e');
      rethrow;
    }
  }

  // Update an existing entry
  Future<int> updateEntry(int id, Map<String, dynamic> entry) async {
    Database db = await database;

    // Ensure the required fields are provided
    if (!_validateEntry(entry)) {
      throw ArgumentError('Missing required fields: title, content, or date');
    }

    // Validate date format
    if (!_isValidDate(entry['date'])) {
      throw ArgumentError('Invalid date format');
    }

    try {
      int count = await db.update(
        'entries',
        entry,
        where: 'id = ?',
        whereArgs: [id],
      );
      print("Updated $count entry(ies) with ID: $id");
      return count;
    } catch (e) {
      print('Error updating entry: $e');
      rethrow;
    }
  }

  // Delete an entry by ID
  Future<int> deleteEntry(int id) async {
    Database db = await database;

    try {
      int count = await db.delete(
        'entries',
        where: 'id = ?',
        whereArgs: [id],
      );
      print("Deleted $count entry(ies) with ID: $id");
      return count;
    } catch (e) {
      print('Error deleting entry: $e');
      rethrow;
    }
  }

  // Retrieve all entries from the database
  Future<List<Map<String, dynamic>>> getEntries() async {
    Database db = await database;

    try {
      List<Map<String, dynamic>> entries = await db.query('entries');
      print("Retrieved entries: $entries");
      return entries;
    } catch (e) {
      print('Error retrieving entries: $e');
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> getEntriesForDateRange(
      DateTime start, DateTime end) async {
    Database db = await database;
    return await db.query(
      'entries',
      where: 'date BETWEEN ? AND ?',
      whereArgs: [start.toIso8601String(), end.toIso8601String()],
    );
  }

  // Helper function to validate that all required fields are present
  bool _validateEntry(Map<String, dynamic> entry) {
    return entry['title']?.isNotEmpty == true &&
        entry['content']?.isNotEmpty == true &&
        entry['date']?.isNotEmpty == true;
  }

  // Helper function to check if the date format is valid (ISO 8601)
  bool _isValidDate(String date) {
    DateTime? parsedDate = DateTime.tryParse(date);
    return parsedDate != null && parsedDate.isValidDate;
  }
}

// Extension to add custom DateTime validation
extension DateTimeValidation on DateTime {
  bool get isValidDate {
    // You can add more validation logic here if needed
    return this.isAfter(DateTime(1900)) &&
        this.isBefore(DateTime.now().add(const Duration(days: 1)));
  }
}

class DiaryPage extends StatefulWidget {
  @override
  _DiaryPageState createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  List<Map<String, dynamic>> _entries = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    // No context here; move fetching to didChangeDependencies
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Fetch entries after the widget is fully initialized
    _fetchEntries();
  }

  Future<void> _fetchEntries() async {
    final DateTime today = DateTime.now();
    // Set start of the day to 12:00 AM and end of the day to 11:59:59 PM
    final DateTime startDate =
        DateTime(today.year, today.month, today.day, 0, 0, 0);
    final DateTime endDate =
        DateTime(today.year, today.month, today.day, 23, 59, 59);

    print('Fetching entries from $startDate to $endDate'); // Debugging

    // Fetching entries from the database
    final dbHelper = DatabaseHelper();
    final allEntries = await dbHelper.getEntries();

    // Filter entries by date range
    final entries = allEntries.where((entry) {
      final entryDate = DateTime.parse(entry['date']);
      return entryDate.isAfter(startDate) && entryDate.isBefore(endDate);
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
      appBar: AppBar(title: Text('Diary Entries')),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _entries.length,
              itemBuilder: (context, index) {
                final entry = _entries[index];
                return ListTile(
                  title: Text(entry['title']),
                  subtitle: Text(entry['date']),
                );
              },
            ),
    );
  }
}
