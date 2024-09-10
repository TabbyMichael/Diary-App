import 'package:flutter/material.dart';

class MediaGalleryScreen extends StatelessWidget {
  const MediaGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Media Gallery',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(6, (index) {
          return Container(
            margin: const EdgeInsets.all(4),
            color: Colors.grey,
            child: Center(
              child: Text(
                'Media $index',
              ),
            ),
          );
        }),
      ),
    );
  }
}
