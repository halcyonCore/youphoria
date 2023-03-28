import 'package:flutter/material.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/explore/topics/gender_identities_card.dart';

class ConsentScreen extends StatelessWidget {
  const ConsentScreen({super.key});

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
                          "Consent",
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
                          "By prioritizing consent, communication, and boundaries, you can feel safe and confident in your sexual experiences. This foundation fosters trust and understanding, empowering you and your partner to navigate your own unique journey.",
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
                      SubtopicCard(
                        title: 'Definition of Consent',
                        description:
                            "Consent is a clear, informed, and voluntary agreement between all parties involved in any form of sexual activity. Remember, consent must be given willingly, without coercion, pressure, or manipulation.",
                      ),
                      SubtopicCard(
                        title: 'Enthusiastic Consent',
                        description:
                            "When engaging in sexual activities, ensure that you and your partner are not only agreeing to the activity but are also actively interested and excited to participate.",
                      ),
                      SubtopicCard(
                        title: 'Communication',
                        description:
                            "Be open and honest with your partner about your boundaries, desires, and comfort levels. Check in with each other and respect each other's wishes at all times.",
                      ),
                      SubtopicCard(
                        title: 'The Role of Alcohol and Drugs',
                        description:
                            "Understand that alcohol and drugs can impair your judgment and your ability to give or receive consent. Consent cannot be given by someone who is incapacitated or under the influence.",
                      ),
                      SubtopicCard(
                        title: 'Consent is Ongoing',
                        description:
                            "Keep in mind that consent can be withdrawn or changed at any time during a sexual encounter, and it's essential to respect these changes.",
                      ),
                      SubtopicCard(
                        title: 'The Importance of Boundaries',
                        description:
                            "Set personal boundaries and respect the boundaries of others. Communicate your boundaries clearly and assertively.",
                      ),
                      SubtopicCard(
                        title: 'No Means No',
                        description:
                            "If your partner expresses discomfort or refuses any activity, take it seriously and do not pressure or coerce them into engaging in sexual activity.",
                      ),
                      SubtopicCard(
                        title: 'Body Language',
                        description:
                            "Pay attention to your partner's body language and recognize that some people may not verbally express their discomfort or lack of consent.",
                      ),
                      SubtopicCard(
                        title: 'Moral Responsibility',
                        description:
                            "Always consider the ethical implications of consent, focusing on the importance of mutual respect, care, and empathy when engaging in sexual activities. Prioritize your partner's well-being and autonomy over any personal desires.",
                      ),
                      SubtopicCard(
                        title: 'Bystander Intervention',
                        description:
                            "Learn to recognize potentially harmful situations and safely intervene when you witness someone who may be at risk.",
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
