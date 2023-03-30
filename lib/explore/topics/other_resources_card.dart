import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@optionalTypeArgs
class OtherResourcesCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget webLink;

  const OtherResourcesCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.webLink})
      : super(key: key);

  // void _toggleFavorite() {
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
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  fontSize: 15,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 6),
                alignment: Alignment.centerLeft,
                child: webLink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
