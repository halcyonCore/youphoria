import 'package:flutter/material.dart';

class TestHomeScreen extends StatelessWidget {
  const TestHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic Home Screen')),
      body: const Center(child: Text('Hello, World!')),
    );
  }
}
