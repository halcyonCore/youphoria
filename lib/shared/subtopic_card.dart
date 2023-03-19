import 'package:flutter/material.dart';

class SubtopicCard extends StatefulWidget {
  final String title;
  final Color color;
  final String description;

  const SubtopicCard(
      {Key? key,
      required this.title,
      required this.color,
      required this.description})
      : super(key: key);

  @override
  _SubtopicCardState createState() => _SubtopicCardState();
}

class _SubtopicCardState extends State<SubtopicCard> {
  bool isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: Container(
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(6),
        ),
        // color: widget.color,
        child: Column(
          children: [
            Container(height: 100),
          ],
        ),
      ),
    );
  }
}
