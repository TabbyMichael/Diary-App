import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'diary_entry_notifier.dart'; // Import your notifier

class EditDiaryEntryScreen extends StatefulWidget {
  final int entryId; // Add entryId to identify the entry
  final String initialTitle;
  final String initialContent;
  final String initialDate;
  final String initialCategory;

  const EditDiaryEntryScreen({
    required this.entryId,
    required this.initialTitle,
    required this.initialContent,
    required this.initialDate,
    required this.initialCategory,
    super.key,
  });

  @override
  _EditDiaryEntryScreenState createState() => _EditDiaryEntryScreenState();
}

class _EditDiaryEntryScreenState extends State<EditDiaryEntryScreen> {
  late TextEditingController _titleController;
  late TextEditingController _contentController;
  late TextEditingController _dateController;
  late TextEditingController _categoryController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.initialTitle);
    _contentController = TextEditingController(text: widget.initialContent);
    _dateController = TextEditingController(text: widget.initialDate);
    _categoryController = TextEditingController(text: widget.initialCategory);
  }

  Future<void> _saveChanges() async {
    final updatedTitle = _titleController.text;
    final updatedContent = _contentController.text;
    final updatedDate = _dateController.text;
    final updatedCategory = _categoryController.text;

    // Create a map of the updated data
    final updatedEntry = {
      'title': updatedTitle,
      'content': updatedContent,
      'date': updatedDate,
      'category': updatedCategory,
    };

    // Use Provider to update the entry
    final notifier = Provider.of<DiaryEntryNotifier>(context, listen: false);
    await notifier.updateEntry(widget.entryId, updatedEntry);

    // Go back to the previous screen
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Edit Diary Entry',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the icon color to white
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveChanges,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _dateController,
              decoration: const InputDecoration(
                labelText: 'Date',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _categoryController,
              decoration: const InputDecoration(
                labelText: 'Category',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: TextFormField(
                controller: _contentController,
                maxLines: null, // Allows for multiple lines
                decoration: const InputDecoration(
                  labelText: 'Content',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _saveChanges,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // Text color
              ),
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
