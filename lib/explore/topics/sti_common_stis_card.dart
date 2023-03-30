import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/shared/subtopic_child_card.dart';

class CommonSTIsCard extends StatelessWidget {
  final String title;
  final String description;

  const CommonSTIsCard(
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
                title: 'Chlamydia',
                description:
                    "According to the CDC, chlamydia is the most frequently reported bacterial STI in the United States. In 2019, there were over 1.8 million cases reported (CDC, 2019). Chlamydia is often asymptomatic, so regular testing is essential to detect and treat it early.",
              ),
              const SubtopicChildCard(
                title: 'Gonorrhea',
                description:
                    "Gonorrhea is another common bacterial STI. The CDC reported over 600,000 cases in the United States in 2019 (CDC, 2019). Like chlamydia, gonorrhea can be asymptomatic, making regular testing crucial for maintaining your sexual health.",
              ),
              const SubtopicChildCard(
                title: 'Human Papillomavirus (HPV)',
                description:
                    "HPV is the most common STI, with nearly all sexually active people contracting it at some point in their lives (CDC, 2021). Many strains of HPV are harmless, but some can lead to genital warts or even cancer. The HPV vaccine is highly effective in preventing infection from the most harmful strains.",
              ),
              const SubtopicChildCard(
                title: 'Genital Herpes',
                description:
                    "Genital herpes is a viral STI caused by the herpes simplex virus (HSV). According to the World Health Organization (WHO), about 13% of people aged 15-49 worldwide have HSV-2, which primarily causes genital herpes (WHO, 2020). Although there's no cure for herpes, antiviral medications can help manage outbreaks and reduce transmission risk.",
              ),
              const SubtopicChildCard(
                title: 'Syphilis',
                description:
                    "Syphilis is a bacterial infection that can have serious long-term consequences if left untreated. The CDC reported over 38,000 cases of primary and secondary syphilis in the United States in 2019 (CDC, 2019). Early detection and treatment with antibiotics are essential to prevent complications.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
