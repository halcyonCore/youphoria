import 'package:flutter/material.dart';
import 'package:youphoria/search/google_maps.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF0c1421),
        title: const Text(
          'Search',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: GoogleMapsScreen(),
      ),
    );
  }
}
