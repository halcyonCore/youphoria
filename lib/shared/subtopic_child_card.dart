import 'package:flutter/material.dart';

class SubtopicChildCard extends StatelessWidget {
  final String title;
  final String description;

  const SubtopicChildCard(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3, bottom: 3),
                  child: Icon(
                    Icons.star_outline_rounded,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              description,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondaryContainer,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
