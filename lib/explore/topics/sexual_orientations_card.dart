import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/shared/subtopic_child_card.dart';

class SexualOrientationsCard extends StatelessWidget {
  final String title;
  final String description;

  const SexualOrientationsCard(
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
                title: 'Heterosexual',
                description:
                    "Attracted to the opposite gender. Like, a girl who's into guys or a guy who's into girls.",
              ),
              const SubtopicChildCard(
                title: 'Homosexual',
                description:
                    "Attracted to the same gender. This includes gay men (guys into guys) and lesbian women (girls into girls).",
              ),
              const SubtopicChildCard(
                title: 'Bisexual',
                description:
                    "Attracted to people of their own gender and another gender. It's not just about being into men and women, but any gender identities!",
              ),
              const SubtopicChildCard(
                title: 'Pansexual',
                description:
                    "Attracted to others, no matter their gender. Pan folks can be into anyone, whether they're male, female, non-binary, genderfluid, or anything else.",
              ),
              const SubtopicChildCard(
                title: 'Asexual',
                description:
                    "Experiencing little or no sexual attraction. Asexuality is a spectrum, and some ace people might still feel romantic attraction or have other reasons for engaging in sexual activities.",
              ),
              const SubtopicChildCard(
                title: 'Demisexual',
                description:
                    "Feeling sexual attraction only after forming a deep emotional bond. This can happen with people of any gender.",
              ),
              const SubtopicChildCard(
                title: 'Queer',
                description:
                    "An umbrella term for anyone not identifying as heterosexual or cisgender. Some peeps use \"queer\" to describe their orientation when other labels don't quite fit.",
              ),
              const SubtopicChildCard(
                title: 'Questioning',
                description:
                    "For those unsure or exploring their sexual orientation. It's totally cool to question and learn more about yourself!",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
