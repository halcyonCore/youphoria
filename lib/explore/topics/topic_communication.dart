import 'package:flutter/material.dart';
import 'package:youphoria/services/auth.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/theme.dart';

class CommunicationScreen extends StatelessWidget {
  const CommunicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
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
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Padding(
                  // padding: const EdgeInsets.only(left: 25, right: 18, top: 10),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 30, top: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Communication",
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "By embracing open and compassionate communication, you can build strong, healthy relationships with your partners and create an inclusive and supportive atmosphere for everyone. You're not alone in this journey, and talking openly with your partner is a fantastic way to connect and grow together.",
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
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
              padding: const EdgeInsets.only(bottom: 60),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
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
                        title: 'Open Up About Your Feelings',
                        description:
                            'Don\'t be afraid to share your thoughts and emotions with your partner. Being honest about how you feel can help build trust and create a stronger bond.',
                      ),
                      SubtopicCard(
                          title: 'Talk About Boundaries',
                          description:
                              "Let your partner know what you're comfortable with and what your limits are. It's totally okay to have boundaries, and it's crucial to respect each other\'s."),
                      SubtopicCard(
                          title: 'Discuss Consent',
                          description:
                              "Remember, consent is essential for any sexual activity. Make sure you and your partner are on the same page and always check in to ensure you both feel comfortable and safe."),
                      SubtopicCard(
                          title: 'Share Your Desires',
                          description:
                              "It's important to communicate your likes and dislikes openly. Don\'t be shy! Sharing your desires can lead to a more satisfying and enjoyable experience for both of you."),
                      SubtopicCard(
                          title: 'Practice Active Listening',
                          description:
                              "When your partner speaks, really listen to what they're saying. Ask questions and engage in the conversation, so they know you're truly hearing them."),
                      SubtopicCard(
                          title: 'Be Open to Feedback',
                          description:
                              "It\'s normal for things to not always go perfectly. Be open to feedback and willing to learn from your partner's experiences and preferences."),
                      SubtopicCard(
                          title: 'Choose the Right Time and Place',
                          description:
                              "Find a quiet, private space where you can discuss sensitive topics without distractions or interruptions. Make sure you/'re both relaxed and comfortable."),
                      SubtopicCard(
                          title: 'Be Patient and Compassionate',
                          description:
                              "Remember that everyone has different backgrounds, experiences, and comfort levels. Be patient and compassionate when discussing sexual topics, and never judge or criticize your partner for their feelings or choices."),
                      SubtopicCard(
                          title: 'Keep the Conversation Going',
                          description:
                              "Communication doesn\'t end after one talk. Keep the lines of communication open and continue to discuss your thoughts, feelings, and experiences as your relationship evolves."),
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
