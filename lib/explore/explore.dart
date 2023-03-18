// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:youphoria/shared/bottom_nav.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text("go to login"),
          // style: Theme.of(context).elevatedButtonTheme.style,
          onPressed: () => Navigator.pushNamed(context, '/login'),
        ),
      ),
    );
  }
}
