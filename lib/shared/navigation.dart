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
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 40, top: 15, right: 15, left: 15),
        // padding: EdgeInsets.only(bottom: 10, top: 10, right: 10, left: 10),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(0, 3), // changes x,y position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: NavigationBar(
          backgroundColor: Theme.of(context).colorScheme.inverseSurface,
          shadowColor: Theme.of(context).colorScheme.inverseSurface,
          elevation: 5,
          height: 60,
          surfaceTintColor: Theme.of(context).colorScheme.inverseSurface,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 35),
              child: const NavigationDestination(
                icon: Icon(
                  FontAwesomeIcons.house,
                  size: 20,
                ),
                label: 'Explore',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 35),
              child: const NavigationDestination(
                icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 20,
                ),
                label: 'Search',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 35),
              child: const NavigationDestination(
                icon: Icon(
                  FontAwesomeIcons.user,
                  size: 20,
                ),
                label: 'Profile',
              ),
            ),
          ],
        ),
      ),
      body: const <Widget>[
        ExploreScreen(),
        SearchScreen(),
        ProfileScreen(),
      ][currentPageIndex],
    );
  }
}
