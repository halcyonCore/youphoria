import 'package:flutter/material.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/explore/topics/gender_identities_card.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

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
                          "Gender",
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
                          "It's important to be respectful and understanding when learning about different gender identities. If you're ever unsure about someone's pronouns or how they identify, it's always best to ask politely. By being open-minded and inclusive, we can help everyone feel seen, understood, and supported.",
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
                      GenderIdentitiesCard(
                          title: 'Understanding Gender Identities',
                          description: "figure out list"),
                      SubtopicCard(
                        title: 'Respect and Acceptance',
                        description:
                            "Embrace the uniqueness of every individual, and respect their gender identity, even if it\'s different from your own. This helps create a more inclusive and understanding space for everyone.",
                      ),
                      SubtopicCard(
                        title: 'Pronouns Matter',
                        description:
                            "Use the correct pronouns when referring to someone, whether it\'s he/him, she/her, they/them, or another pronoun they prefer. If you\'re unsure, just ask! It\'s a small gesture that makes a big difference.",
                      ),
                      SubtopicCard(
                        title: 'Be Aware of Stereotypes',
                        description:
                            "Challenge common stereotypes and assumptions about gender roles and expectations. Encourage open-mindedness and promote the idea that everyone should be free to express themselves as they truly are.",
                      ),
                      SubtopicCard(
                        title: 'Practice Active Listening',
                        description:
                            "When your partner speaks, really listen to what they're saying. Ask questions and engage in the conversation, so they know you're truly hearing them.",
                      ),
                      SubtopicCard(
                        title: 'Support Your Peers',
                        description:
                            "Offer support and understanding to your friends or classmates who may be exploring their gender identity. Be a good listener, and respect their feelings and privacy.",
                      ),
                      SubtopicCard(
                        title: 'Educate Yourself',
                        description:
                            "Keep learning about gender identities and the experiences of those who may be different from you. Stay informed and be open to new ideas and perspectives.",
                      ),
                      SubtopicCard(
                        title: 'Stand Up Against Discrimination',
                        description:
                            "If you witness or experience discrimination or bullying based on someone\'s gender identity, speak up and seek help from a trusted adult or authority figure.",
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
