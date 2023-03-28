import 'package:flutter/material.dart';
import 'package:youphoria/explore/topics/sti_common_stis_card.dart';
import 'package:youphoria/explore/topics/sti_stigma_card.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/explore/topics/gender_identities_card.dart';

class STIScreen extends StatelessWidget {
  const STIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
              ),
              child: Container(
                // height: 250.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 30, top: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Sexually Transmitted Infections (STIs)",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Understanding what STIs are, how they're transmitted, and the potential risks involved is crucial. Some common STIs include chlamydia, gonorrhea, syphilis, herpes, human papillomavirus (HPV), and HIV.",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Theme.of(context).colorScheme.background,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 15, left: 15, bottom: 30),
                  child: Column(
                    children: const [
                      CommonSTIsCard(title: 'Common STIs', description: ""),
                      SubtopicCard(
                        title: 'Symptoms and Testing',
                        description:
                            "Be aware of the possible symptoms of STIs, but also remember that many STIs can be asymptomatic. Regular testing is essential for maintaining your sexual health, even if you feel fine.",
                      ),
                      SubtopicCard(
                        title: 'Protection',
                        description:
                            "Using barrier methods like condoms and dental dams during sexual activities can significantly reduce the risk of transmitting or contracting STIs. It's essential to know how to use these methods correctly and consistently.",
                      ),
                      SubtopicCard(
                        title: 'Communication',
                        description:
                            "Talk openly and honestly with your sexual partners about your STI status, testing history, and boundaries. This kind of communication can help build trust and create a safer, more supportive environment for everyone involved.",
                      ),
                      STIStigmaCard(
                        title: 'Stigma and Support',
                        description:
                            "It's crucial to challenge the stigma surrounding STIs and create an inclusive, understanding atmosphere. Remember that anyone can contract an STI, and it's essential to offer support and compassion to those affected.",
                      ),
                      SubtopicCard(
                        title: 'Prevention',
                        description:
                            "In addition to barrier methods, some STIs have vaccines available, such as the HPV vaccine. Staying informed about these prevention methods can further protect you and your partners.",
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
