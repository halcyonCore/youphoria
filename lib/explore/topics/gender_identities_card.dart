import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/shared/subtopic_child_card.dart';

class GenderIdentitiesCard extends StatefulWidget {
  final String title;
  final String description;

  const GenderIdentitiesCard(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  _GenderIdentitiesCardState createState() => _GenderIdentitiesCardState();
}

class _GenderIdentitiesCardState extends State<GenderIdentitiesCard> {
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
              const SubtopicChildCard(
                title: 'Cisgender',
                description:
                    "Refers to people whose gender identity matches the sex they were assigned at birth. For example, someone who was assigned female at birth and identifies as female.",
              ),
              const SubtopicChildCard(
                title: 'Transgender',
                description:
                    "Transgender individuals have a gender identity that doesn\'t match the sex they were assigned at birth. For example, a person assigned male at birth but who identifies as female.",
              ),
              const SubtopicChildCard(
                title: 'Non-binary',
                description:
                    "Non-binary people have a gender identity that doesn\'t fit within the traditional categories of male or female. They might identify as both, neither, or as a different gender entirely.",
              ),
              const SubtopicChildCard(
                title: 'Genderqueer',
                description:
                    "This is an umbrella term for people who don\'t identify as strictly male or female. They might feel like their gender identity is fluid, a mix of genders, or something entirely different.",
              ),
              const SubtopicChildCard(
                title: 'Genderfluid',
                description:
                    "Genderfluid individuals experience changes in their gender identity over time. They might feel more masculine on some days, more feminine on others, or something else entirely.",
              ),
              const SubtopicChildCard(
                title: 'Agender',
                description:
                    "Agender people don\'t identify with any gender. They may feel genderless or not have a strong connection to any gender identity.",
              ),
              const SubtopicChildCard(
                title: 'Bigender',
                description:
                    "Bigender individuals identify with two distinct genders. They might feel both male and female or a combination of multiple genders.",
              ),
              const SubtopicChildCard(
                title: 'Demigender',
                description:
                    "Demigender people partially identify with a certain gender but not completely. For example, a demigirl might feel a connection to femininity, but not fully identify as female.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
