import 'package:flutter/material.dart';
import 'package:youphoria/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        automaticallyImplyLeading: false,
        title: const Text("Profile"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.tertiaryContainer,
              Theme.of(context).colorScheme.secondaryContainer,
              Theme.of(context).colorScheme.secondaryContainer,
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(20),
              child: Center(
                  child: Text(
                "username",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              )),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
              ),
              height: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/fyp');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).colorScheme.secondaryContainer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                child: Container(),
              ),
            ),
            FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/fyp');
                },
                child: Text("favorites")),
            ElevatedButton(
              child: const Text("Sign out"),
              onPressed: () async {
                await AuthService().signOut();
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
