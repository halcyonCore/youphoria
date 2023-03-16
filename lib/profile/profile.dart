import 'package:flutter/material.dart';
import 'package:youphoria/shared/bottom_nav.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
