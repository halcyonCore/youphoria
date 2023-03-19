import 'package:flutter/material.dart';
import 'package:youphoria/login/login.dart';
import 'package:youphoria/services/auth.dart';
import 'package:youphoria/shared/navigation.dart';
// import 'package:youphoria/shared/shared.dart'; # import future error message screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: AuthService().userStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('loading...');
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Something went wrong'),
            );
          } else if (snapshot.hasData) {
            return const Navigation();
          } else {
            return const LoginScreen();
          }
        });
  }
}
