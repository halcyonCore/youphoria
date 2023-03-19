import 'package:flutter/material.dart';
import 'package:youphoria/explore/explore.dart';
import 'package:youphoria/profile/profile.dart';
import 'package:youphoria/search/search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFF0c1421),
        surfaceTintColor: const Color(0xFF000000),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(
              FontAwesomeIcons.house,
              size: 20,
            ),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(
              FontAwesomeIcons.user,
              size: 20,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: const <Widget>[
        ExploreScreen(),
        SearchScreen(),
        ProfileScreen(),
      ][currentPageIndex],
    );
  }
}
