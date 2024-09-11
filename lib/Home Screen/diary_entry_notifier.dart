import 'package:diary/Storage/database_helper.dart';
import 'package:flutter/material.dart';

class DiaryEntryNotifier extends ChangeNotifier {
  List<Map<String, dynamic>> _entries = [];

  List<Map<String, dynamic>> get entries => _entries;

  DiaryEntryNotifier() {
    loadEntries();
  }

  Future<void> loadEntries() async {
    final dbHelper = DatabaseHelper(); // Use default constructor
    final entries = await dbHelper.getEntries();
    _entries = entries;
    notifyListeners();
  }

  Future<void> addEntry(Map<String, dynamic> entry) async {
    final dbHelper = DatabaseHelper(); // Use default constructor
    await dbHelper.insertEntry(entry);
    loadEntries(); // Refresh entries after adding
  }

  Future<void> updateEntry(int id, Map<String, dynamic> entry) async {
    final dbHelper = DatabaseHelper(); // Use default constructor
    await dbHelper.updateEntry(id, entry);
    loadEntries(); // Refresh entries after updating
  }

  Future<void> deleteEntry(int id) async {
    final dbHelper = DatabaseHelper(); // Use default constructor
    await dbHelper.deleteEntry(id);
    loadEntries(); // Refresh entries after deleting
  }
}
