import 'package:flutter/material.dart';

class FypScreen extends StatelessWidget {
  const FypScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0c1421),
        title: const Text(
          'FYP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
