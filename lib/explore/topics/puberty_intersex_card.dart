import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/shared/subtopic_child_card.dart';

class PubertyIntersexCard extends StatefulWidget {
  final String title;
  final String description;

  const PubertyIntersexCard(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  _PubertyIntersexCardState createState() => _PubertyIntersexCardState();
}

class _PubertyIntersexCardState extends State<PubertyIntersexCard> {
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
                title: 'Unique Experiences',
                description:"Intersex puberty experiences can vary widely depending on an individual's specific intersex variation. It's essential to remember that there's no one-size-fits-all experience, and each person's journey is unique.",           
   ),
              const SubtopicChildCard(
                title: 'Hormone Changes',
                description:
"Just like with other puberty experiences, intersex individuals may undergo hormonal changes that can affect their physical, emotional, and sexual development. These changes might be different from what's commonly seen in XX or XY puberty.",              ),
              const SubtopicChildCard(
                title: 'Physical Development',
                description:
"Intersex individuals might experience a mix of typically male and female puberty changes or develop characteristics that don't fit neatly into either category. It's important to embrace these differences and remember that there's no right or wrong way for your body to develop.",              ),
          
              const SubtopicChildCard(
                title: 'Emotional Changes',
                description:
                    "Hormonal fluctuations can also lead to mood swings, increased emotions, or feelings of self-consciousness. It's important to remember that these feelings are normal and to seek support from friends, family, or a trusted adult when needed.",
              ),
              const SubtopicChildCard(
                title: 'Medical Care and Advocacy',
                description:
"For some intersex individuals, navigating healthcare during puberty can be challenging. It's crucial to find healthcare providers who are knowledgeable about intersex issues and who can offer the appropriate care and support.",              
),
            ],
          ),
        ),
      ),
    );
  }
}
