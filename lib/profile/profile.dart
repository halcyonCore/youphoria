import 'package:flutter/material.dart';
import 'package:youphoria/services/auth.dart';
import 'package:youphoria/shared/bottom_nav.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      bottomNavigationBar: const BottomNavBar(),
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
