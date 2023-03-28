import 'package:flutter/material.dart';
import 'package:youphoria/search/google_maps.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                Theme.of(context).colorScheme.tertiary
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        title: Text(
          'Search',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),

      body: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  cursorColor: Theme.of(context).colorScheme.primary,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Find a place",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Container(
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: const SizedBox(
                    height: 500,
                    child: GoogleMapsScreen(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
