import 'package:flutter/material.dart';
import 'package:youphoria/explore/topics/sexual_orientations_card.dart';
import 'package:youphoria/explore/topics/sexual_orientations_myths_card.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/explore/topics/gender_identities_card.dart';

class SexualOrientationScreen extends StatelessWidget {
  const SexualOrientationScreen({super.key});

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
                          "Sexual Orientation",
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
                          "By acknowledging and celebrating the wide range of sexual orientations and gender identities, we can help create a world where everyone feels welcome and understood. Keep in mind that there are others who share similar experiences, and by being open to learning and supporting each other, we can strengthen our connections and grow together in understanding and acceptance.",
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
                      SexualOrientationsCard(
                        title: 'Understanding Sexual Orientations',
                        description:
                            "Sexual orientation refers to whom you are attracted to emotionally, romantically, and sexually. Remember, everyone's experiences are unique, and it's important to respect and support each other. Let's make the world a more loving and understanding place for everyone!",
                      ),
                      SubtopicCard(
                        title:
                            'The Difference Between Sex, Gender, and Sexual Orientation',
                        description:
                            "Understand that sex is assigned at birth, gender is a social and cultural construct, and sexual orientation is about your emotional, romantic, and sexual attractions. These three aspects are distinct and do not necessarily determine one another.",
                      ),
                      SubtopicCard(
                        title: 'Respect and Acceptance',
                        description:
                            "Embrace and respect the diverse range of sexual orientations and gender identities that people may have. Accept and celebrate the uniqueness of each individual, fostering a supportive environment for everyone.",
                      ),
                      SubtopicCard(
                        title: 'Coming Out and Self-Identification',
                        description:
                            "It's important to recognize that coming out is a personal and ongoing process. Offer support to your peers if they choose to disclose their sexual orientation or gender identity, and respect their privacy and feelings.",
                      ),
                      SexualOrientationMythsCard(
                        title: 'Addressing Stereotypes and Myths',
                        description:
                            "Be aware of common stereotypes and myths surrounding sexual orientation and gender identity. Challenge these misconceptions and promote accurate information and understanding.",
                      ),
                      SubtopicCard(
                        title: 'Language and Terminology',
                        description:
                            "Learn inclusive language and terminology to discuss sexual orientation and gender identity respectfully. Use the correct pronouns and terms when referring to individuals, and be open to learning if someone corrects you.",
                      ),
                      SubtopicCard(
                        title: 'The Importance of Allies',
                        description:
                            "Understand the role of allies in supporting LGBTQ+ individuals and creating inclusive environments. As an ally, educate yourself about the issues faced by LGBTQ+ people, stand up against discrimination, and actively support your peers.",
                      ),
                      SubtopicCard(
                        title: 'Mental Health and Support',
                        description:
                            "Be aware that LGBTQ+ individuals may face unique mental health challenges due to societal stigma, discrimination, or internal struggles. Offer support and empathy, and encourage those who need help to reach out to trusted friends, family members, or professionals.",
                      ),
                      SubtopicCard(
                        title: 'Safe Spaces and Resources',
                        description:
                            "Seek out safe spaces and resources, such as LGBTQ+ clubs, community centers, or online groups, to connect with others who share similar experiences and learn more about sexual orientation and gender identity.",
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
