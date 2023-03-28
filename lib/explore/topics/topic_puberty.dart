import 'package:flutter/material.dart';
import 'package:youphoria/explore/topics/puberty_xx_card.dart';
import 'package:youphoria/explore/topics/puberty_xy_card.dart';
import 'package:youphoria/explore/topics/sexual_orientations_card.dart';
import 'package:youphoria/explore/topics/sexual_orientations_myths_card.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/explore/topics/gender_identities_card.dart';
import 'package:youphoria/explore/topics/puberty_intersex_card';

class PubertyScreen extends StatelessWidget {
  const PubertyScreen({super.key});

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
                          "Puberty",
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
                          "Individuals with XX chromosomes are typically assigned female at birth, while those with XY chromosomes are usually assigned male at birth. Intersex individuals can have diverse chromosomal variations, and their assigned gender at birth may be male, female, or intersex, depending on their unique circumstances.",
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
                      PubertyXXCard(
                        title: 'XX Chromosomes',
                        description: "(Assigned Female at Birth)",
                      ),
                      PubertyXYCard(
                        title: "XY Chromosomes",
                        description: "(Assigned Male at Birth)",
                      ),
                      PubertyIntersexCard(
                        title: 'Intersex (XXY, XYY, XXX, XO, XX/XY, and more)',
                        description:
                            "Embrace and respect the diverse range of sexual orientations and gender identities that people may have. Accept and celebrate the uniqueness of each individual, fostering a supportive environment for everyone.",
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
