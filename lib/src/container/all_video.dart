import 'package:flutter/material.dart';

class AllVideo extends StatelessWidget {
  const AllVideo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('all_video'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
          },
          child: const Text('all_video'),
        ),
      ),
    );
  }
}