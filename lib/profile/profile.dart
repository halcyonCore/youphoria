import 'package:flutter/material.dart';
import 'package:youphoria/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Profile"),
      ),
      body: ElevatedButton(
        child: const Text("Sign out"),
        onPressed: () async {
          await AuthService().signOut();
          Navigator.pushNamed(context, '/login');
        },
      ),
    );
  }
}
