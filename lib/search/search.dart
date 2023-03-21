import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
        title: const Text(
          'Search',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // Theme.of(context).colorScheme.primaryContainer,
              // Theme.of(context).colorScheme.secondaryContainer,
              Theme.of(context).colorScheme.errorContainer,
              Theme.of(context).colorScheme.secondaryContainer,
              Theme.of(context).colorScheme.secondaryContainer,
            ],
          ),
        ),
      ),
    );
  }
}
