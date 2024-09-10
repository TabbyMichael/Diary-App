import 'package:flutter/material.dart';

class EntryDetailScreen extends StatefulWidget {
  const EntryDetailScreen({super.key});

  @override
  _EntryDetailScreenState createState() => _EntryDetailScreenState();
}

class _EntryDetailScreenState extends State<EntryDetailScreen> {
  String? _selectedCategory;
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Diary Entry',
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Display
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date: ${_selectedDate.toLocal()}'.split(' ')[0],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_today,
                      color: Colors.white), // White color for calendar icon
                  onPressed: () => _selectDate(context),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Title Header
            const Text(
              'Title',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),

            // Title Field
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white10,
                filled: true,
              ),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Content Header
            const Text(
              'Content',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),

            // Content Field
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white10,
                  filled: true,
                ),
                maxLines: null,
                expands: true,
                keyboardType: TextInputType.multiline,
                textAlignVertical:
                    TextAlignVertical.top, // Align text to the top
              ),
            ),
            const SizedBox(height: 20),

            // Tags/Category Selector Header
            const Text(
              'Tag/Category',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),

            // Tags/Category Selector
            DropdownButtonFormField<String>(
              value: _selectedCategory,
              items: <String>[
                'Personal',
                'Work',
                'Travel',
                'Health',
                'Goals',
                'Finance',
                'Gratitude',
                'Learning',
                'Creative',
                'Events',
                'Family',
                'Friends',
                'Spiritual'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCategory = newValue;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white10,
                filled: true,
              ),
            ),
            const SizedBox(height: 20),

            // Save Button
            Center(
              child: SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    // Save entry logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Entry saved!',
                        ),
                      ),
                    );
                    Navigator.pop(context); // Go back to the previous screen
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    backgroundColor: Colors.blue, // Blue color for button
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Text color
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
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
