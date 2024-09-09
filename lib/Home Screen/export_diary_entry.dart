import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

Future<void> exportDiaryEntry(String entryContent) async {
  try {
    final directory = await getExternalStorageDirectory();
    if (directory == null) {
      throw Exception('Could not get the external storage directory');
    }
    final file = File('${directory.path}/diary_entry.txt');
    await file.writeAsString(entryContent);
    print('Diary entry saved to ${file.path}');
  } catch (e) {
    print('Failed to export diary entry: $e');
  }
}

class ExportButton extends StatelessWidget {
  final String diaryEntryContent;

  const ExportButton({required this.diaryEntryContent, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        try {
          await exportDiaryEntry(diaryEntryContent);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Diary entry exported successfully'),
            ),
          );
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to export diary entry: $e'),
            ),
          );
        }
      },
      child: const Text('Export Diary Entry'),
    );
  }
}
