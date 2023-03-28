import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/shared/subtopic_child_card.dart';

class PubertyXYCard extends StatefulWidget {
  final String title;
  final String description;

  const PubertyXYCard(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  _PubertyXYCardState createState() => _PubertyXYCardState();
}

class _PubertyXYCardState extends State<PubertyXYCard> {
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
                title: 'Growth Spurt',
                description:
                    "One of the most noticeable changes during puberty is a growth spurt, which can cause you to grow taller, develop broader shoulders, and gain muscle mass.",
              ),
              const SubtopicChildCard(
                title: 'Voice Deepening',
                description:
                    "Your voice will begin to deepen as your vocal cords grow and thicken. This process can sometimes cause your voice to crack, but it will eventually stabilize.",
              ),
              const SubtopicChildCard(
                title: 'Body Hair',
                description:
                    "You'll start to notice hair growing in new places, like your face, chest, underarms, and pubic area. This is a completely normal part of puberty.",
              ),
              const SubtopicChildCard(
                title: 'Genital Development',
                description:
                    "Your penis and testicles will grow and change during puberty. It's important to remember that everyone develops at their own pace, and there's a wide range of normal when it comes to size and shape.",
              ),
              const SubtopicChildCard(
                title: 'Erections and Ejaculation',
                description:
                    "You may experience spontaneous erections and wet dreams, which are both normal aspects of male puberty. These experiences are a result of increased hormone levels and sexual development.",
              ),
              const SubtopicChildCard(
                title: 'Skin Changes',
                description:
                    "You may experience acne or other skin changes as your hormone levels fluctuate during puberty. A good skincare routine can help manage these issues.",
              ),
              const SubtopicChildCard(
                title: 'Body Odor',
                description:
                    "Increased sweating and body odor are common during puberty. Practicing good hygiene, like showering regularly and using deodorant, can help keep you feeling fresh and confident.",
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
