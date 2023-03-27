import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/shared/subtopic_child_card.dart';

class SexualOrientationMythsCard extends StatelessWidget {
  final String title;
  final String description;

  const SexualOrientationMythsCard(
      {Key? key, required this.title, required this.description})
      : super(key: key);

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
              const SubtopicChildCard(
                title: 'Myth 1: Bisexuality is just a phase.',
                description:
                    "Truth: Bisexuality is a valid and real sexual orientation. People who identify as bisexual aren't \"going through a phase\" or \"confused\" – they genuinely experience attraction to more than one gender.",
              ),
              const SubtopicChildCard(
                title:
                    'Myth 2: Asexual people just haven\'t met the right person yet.',
                description:
                    "Truth: Asexuality is a legitimate sexual orientation that exists on a spectrum. Asexual people experience little or no sexual attraction to others, and it's not about \"finding the right person.\" Their feelings are valid and should be respected.",
              ),
              const SubtopicChildCard(
                title:
                    'Myth 3: All gay men are feminine, and all lesbian women are masculine.',
                description:
                    "Truth: Sexual orientation doesn't determine how someone expresses their gender. There's a vast range of gender expression among people of all sexual orientations, and it's essential to celebrate and respect that diversity.",
              ),
              const SubtopicChildCard(
                title:
                    'Myth 4: You can tell someone\'s sexual orientation by how they look or act.',
                description:
                    "Truth: There's no specific \"look\" or behavior associated with any sexual orientation. People of all orientations can express themselves in various ways, and it's crucial not to make assumptions based on appearances or actions.",
              ),
              const SubtopicChildCard(
                title: 'Myth 5: People choose their sexual orientation.',
                description:
                    "Truth: Sexual orientation is not a choice. It's a natural part of who someone is, and it's essential to respect and support each person's identity without trying to change or \"fix\" them.",
              ),
              const SubtopicChildCard(
                title:
                    'Myth 6: You can\'t be LGBTQ+ if you haven\'t had a same-sex relationship.',
                description:
                    "Truth: Sexual orientation is about attraction and identity, not just relationship history. You can still identify as LGBTQ+ even if you haven't had a same-sex relationship or any relationship at all.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
