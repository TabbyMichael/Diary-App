import 'package:flutter/material.dart';

class EditDiaryEntryScreen extends StatefulWidget {
  final String initialContent;

  const EditDiaryEntryScreen({required this.initialContent, super.key});

  @override
  _EditDiaryEntryScreenState createState() => _EditDiaryEntryScreenState();
}

class _EditDiaryEntryScreenState extends State<EditDiaryEntryScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialContent);
  }

  void _saveChanges() {
    final updatedContent = _controller.text;
    // Save the updated content back to storage
    // e.g., update the file or database record
    Navigator.pop(context, updatedContent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Diary Entry',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
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
        child: TextField(
          controller: _controller,
          maxLines: null, // Allows for multiple lines
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Edit your diary entry...',
          ),
        ),
      ),
    );
  }
}
