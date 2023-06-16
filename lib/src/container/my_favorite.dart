import 'package:flutter/material.dart';

class MyFavorite extends StatelessWidget {
   const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my_favorite'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
          },
          child: const Text('my_favorite'),
        ),
      ),
    );
  }
}