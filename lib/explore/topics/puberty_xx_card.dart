import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/shared/subtopic_child_card.dart';

class PubertyXXCard extends StatefulWidget {
  final String title;
  final String description;

  const PubertyXXCard(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  _PubertyXXCardState createState() => _PubertyXXCardState();
}

class _PubertyXXCardState extends State<PubertyXXCard> {
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
                title: 'Breast Development',
                description:
                    "One of the first signs of puberty is breast growth, which can happen at different rates for everyone. It's normal for breasts to feel tender or sore during this time.",
              ),
              const SubtopicChildCard(
                title: 'Body Hair',
                description:
                    "You'll likely notice hair starting to grow in new places, like under your arms and around your pubic area. This is a completely normal part of puberty.",
              ),
              const SubtopicChildCard(
                title: 'Menstruation',
                description:
                    "You'll begin to experience your period, which is the monthly shedding of the uterine lining. Periods can be irregular at first, and it might take some time for your cycle to become more predictable.",
              ),
              const SubtopicChildCard(
                title: 'Growth Spurt',
                description:
                    "During puberty, you'll likely have a growth spurt, which can cause you to grow taller and develop a more adult-like body shape.",
              ),
              const SubtopicChildCard(
                title: 'Body Odor',
                description:
                    "As your body changes, you might notice an increase in sweating and body odor. This is normal and can be managed by practicing good hygiene, like showering regularly and using deodorant.",
              ),
              const SubtopicChildCard(
                title: 'Skin Changes',
                description:
                    "You may experience acne or other skin changes as your hormone levels fluctuate during puberty. A good skincare routine can help manage these issues.",
              ),
              const SubtopicChildCard(
                title: 'Emotional Changes',
                description:
                    "Hormonal fluctuations can also lead to mood swings, increased emotions, or feelings of self-consciousness. It's important to remember that these feelings are normal and to seek support from friends, family, or a trusted adult when needed.",
              ),
              const SubtopicChildCard(
                title: 'Peer Pressure and Body Image',
                description:
                    "During puberty, it's common to feel pressure to conform to societal beauty standards or to compare yourself to others. Try to remember that everyone's body is different, and there's no one \"right\" way to look.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
