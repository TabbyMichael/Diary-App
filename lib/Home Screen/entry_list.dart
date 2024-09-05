import 'package:flutter/material.dart';

class EntryListScreen extends StatelessWidget {
  const EntryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map?;
    final startDate = arguments?['start'] as DateTime?;
    final endDate = arguments?['end'] as DateTime?;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Diary Entries',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Entry 1'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/entry-detail',
              );
            },
          ),
          ListTile(
            title: const Text('Entry 2'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/entry-detail',
              );
            },
          ),
          if (startDate != null) ...[
            Text('Selected Start Date: ${startDate.toLocal()}'),
          ],
          if (endDate != null) ...[
            Text('Selected End Date: ${endDate.toLocal()}'),
          ],
        ],
      ),
    );
  }
}
