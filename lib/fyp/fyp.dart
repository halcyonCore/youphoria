import 'package:flutter/material.dart';
import 'package:youphoria/shared/bottom_nav.dart';
import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class FypScreen extends StatelessWidget {
  const FypScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FYP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'FYP',
            ),
            ElevatedButton(
              child: const Text('Get Communication'),
              onPressed: () async {
                final topic =
                    await FirestoreService().getTopic('communication');
                print(topic!['title']);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
