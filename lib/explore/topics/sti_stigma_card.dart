import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/shared/subtopic_child_card.dart';

class STIStigmaCard extends StatelessWidget {
  final String title;
  final String description;

  const STIStigmaCard(
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
                title:
                    'Stigma 1: People with STIs are "dirty" or "promiscuous."',
                description:
                    "Truth: Anyone who is sexually active can potentially contract an STI, regardless of their number of partners. It's essential to practice safer sex and get regularly tested, but having an STI doesn't define someone's character or worth.",
              ),
              const SubtopicChildCard(
                title:
                    'Stigma 2: If you use protection, you won\'t get an STI.',
                description:
                    "Truth: While using protection (like condoms or dental dams) significantly reduces the risk of STI transmission, no method is 100% foolproof. It's still crucial to get tested regularly and communicate with your partners about STIs.",
              ),
              const SubtopicChildCard(
                title:
                    'Stigma 3: You can tell if someone has an STI just by looking at them.',
                description:
                    "Truth: Many STIs can be asymptomatic, meaning they don't show any visible signs or symptoms. The only way to know for sure is to get tested, and it's important not to make assumptions about someone's STI status.",
              ),
              const SubtopicChildCard(
                title:
                    'Stigma 4: STIs only happen to people who aren\'t careful.',
                description:
                    "Truth: Even people who take precautions can contract an STI. Sometimes, transmission can occur despite someone's best efforts. It's essential to approach these situations with understanding and compassion, rather than judgment.",
              ),
              const SubtopicChildCard(
                title: 'Stigma 5: Having an STI means your sex life is over.',
                description:
                    "Truth: Many STIs are treatable or manageable with the right care and medication. It's possible to maintain a fulfilling sex life while living with an STI, as long as you take necessary precautions and communicate openly with your partners.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
