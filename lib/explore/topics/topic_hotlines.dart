import 'package:flutter/material.dart';
import 'package:youphoria/explore/topics/hotline_resources_card.dart';
import 'package:youphoria/shared/phone_number_link.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/explore/topics/gender_identities_card.dart';
import 'package:youphoria/shared/web_link.dart';

class HotlinesScreen extends StatelessWidget {
  const HotlinesScreen({super.key});

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
                      HotlineResourcesCard(
                        title: 'National Suicide Prevention Lifeline',
                        description:
                            "A helpline for individuals experiencing suicidal thoughts or crises.",
                        phone: PhoneNumberLink(phoneNumber: "1-800-273-TALK"),
                        webLink: WebLink(
                          url: "https://suicidepreventionlifeline.org/",
                        ),
                      ),
                      HotlineResourcesCard(
                        title: 'Crisis Text Line',
                        description:
                            "A service that provides 24/7 support to individuals in crisis via text message.",
                        phone: PhoneNumberLink(
                            phoneNumber: "Text \"HELLO\" to 741741"),
                        webLink: WebLink(
                          url: "https://www.crisistextline.org/",
                        ),
                      ),
                      HotlineResourcesCard(
                        title: 'The Trevor Project (for LGBTQ+ youth)',
                        description:
                            "A helpline and text service specifically for LGBTQ+ youth who are struggling with mental health issues or in crisis.",
                        phone: PhoneNumberLink(
                            phoneNumber:
                                "1-866-488-7386 or Text \"START\" to 678678"),
                        webLink: WebLink(
                          url: "https://www.thetrevorproject.org/",
                        ),
                      ),
                      HotlineResourcesCard(
                        title: 'National Sexual Assault Hotline (RAINN)',
                        description:
                            "A helpline for individuals who have experienced sexual assault, abuse, or harassment.",
                        phone: PhoneNumberLink(
                          phoneNumber: "1-800-656-HOPE",
                        ),
                        webLink: WebLink(
                          url: "https://www.rainn.org/",
                        ),
                      ),
                      HotlineResourcesCard(
                        title: 'National Domestic Violence Hotline',
                        description:
                            "A helpline for individuals experiencing domestic violence, as well as their friends and family members.",
                        phone: PhoneNumberLink(
                          phoneNumber: "1-800-799-SAFE",
                        ),
                        webLink: WebLink(
                          url: "https://www.thehotline.org/",
                        ),
                      ),
                      HotlineResourcesCard(
                        title: 'Teen Line (teen-to-teen helpline)',
                        description:
                            "A helpline and text service that offers support and advice to teenagers who are dealing with a wide range of issues.",
                        phone: PhoneNumberLink(phoneNumber: "1-800-TLC-TEEN"),
                        webLink: WebLink(
                          url: "https://teenlineonline.org/",
                        ),
                      ),
                      HotlineResourcesCard(
                        title: 'National Runaway Safeline',
                        description:
                            "A helpline for runaway and homeless youth who need assistance and support.",
                        phone: PhoneNumberLink(
                          phoneNumber: "1-800-RUNAWAY",
                        ),
                        webLink: WebLink(
                          url: "https://www.1800runaway.org/",
                        ),
                      ),
                      HotlineResourcesCard(
                        title:
                            'National Eating Disorders Association (NEDA) Helpline',
                        description:
                            "A helpline for individuals who are struggling with eating disorders, as well as their loved ones.",
                        phone: PhoneNumberLink(phoneNumber: "1-800-931-2237"),
                        webLink: WebLink(
                          url: "https://www.nationaleatingdisorders.org/",
                        ),
                      ),
                      HotlineResourcesCard(
                        title:
                            'Substance Abuse and Mental Health Services Administration (SAMHSA) National Helpline',
                        description:
                            "A helpline for individuals struggling with substance abuse and mental health issues.",
                        phone: PhoneNumberLink(phoneNumber: "1-800-662-HELP"),
                        webLink: WebLink(
                          url:
                              "https://www.samhsa.gov/find-help/national-helpline",
                        ),
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
