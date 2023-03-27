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
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ],
              ),
            ),
          ),
          // backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          automaticallyImplyLeading: false,
          title: Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "username",
                              style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          FractionallySizedBox(
                            widthFactor: 0.9,
                            child: OutlinedButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/communication');
                              },
                              icon: Icon(
                                Icons.favorite_outline,
                                size: 20,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                              label: Text(
                                "Favorites",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inverseSurface
                                      .withOpacity(.5),
                                  width: 1,
                                ),
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                minimumSize: const Size(double.infinity, 100),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: OutlinedButton(
                              onPressed: () async {
                                await AuthService().signOut();
                                Navigator.pushNamed(context, '/login');
                              },
                              child: Text(
                                "Sign out",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inverseSurface
                                      .withOpacity(.5),
                                  width: 1,
                                ),
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: OutlinedButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/chat'),
                              child: Text(
                                "temp: go to chat",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inverseSurface
                                      .withOpacity(.5),
                                  width: 1,
                                ),
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
