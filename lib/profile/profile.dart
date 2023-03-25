import 'package:flutter/material.dart';
import 'package:youphoria/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color(0xFF0c1421),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).colorScheme.secondaryContainer,
                  Theme.of(context).colorScheme.primaryContainer,
                ],
              ),
            ),
          ),
          // backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          automaticallyImplyLeading: true,
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        body: Column(
          children: [
            // testing
            Stack(
              children: [
                Container(),
              ],
            ),
            //start rest of page
            Container(),
          ],
        ));
  }
}
