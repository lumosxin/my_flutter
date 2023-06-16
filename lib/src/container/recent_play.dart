import 'package:flutter/material.dart';

class RecentPlay extends StatelessWidget {
   const RecentPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('recent_play'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
          },
          child: const Text('recent_play'),
        ),
      ),
    );
  }
}