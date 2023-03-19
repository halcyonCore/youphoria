import 'package:flutter/material.dart';
import 'package:youphoria/services/auth.dart';
import 'package:youphoria/shared/subtopic_card.dart';

class CommunicationScreen extends StatelessWidget {
  const CommunicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(
                  image: AssetImage('assets/images/topic-banner.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 18, top: 10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Communication",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "By embracing open and compassionate communication, you can build strong, healthy relationships with your partners and create an inclusive and supportive atmosphere for everyone. You're not alone in this journey, and talking openly with your partner is a fantastic way to connect and grow together.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Column(
                children: [
                  SubtopicCard(
                    title: 'Open Up About Your Feelings',
                    color: Color(0xFF37517e),
                    description:
                        'Don\'t be afraid to share your thoughts and emotions with your partner. Being honest about how you feel can help build trust and create a stronger bond.',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
