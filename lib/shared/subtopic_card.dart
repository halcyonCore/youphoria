import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubtopicCard extends StatefulWidget {
  final String title;
  final String description;

  const SubtopicCard({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  _SubtopicCardState createState() => _SubtopicCardState();
}

class _SubtopicCardState extends State<SubtopicCard> {
  bool isFavorite = false;

  // void _toggleFavorite() {
  //   setState(() {
  //     isFavorite = !isFavorite;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(35),
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 25, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  widget.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                widget.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  fontSize: 15,
                ),
              ),
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       IconButton(
              //         onPressed: _toggleFavorite,
              //         icon: Icon(
              //           isFavorite
              //               ? FontAwesomeIcons.solidHeart
              //               : FontAwesomeIcons.heart,
              //           size: 20,
              //           color: isFavorite
              //               ? Theme.of(context).colorScheme.tertiary
              //               : null,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
