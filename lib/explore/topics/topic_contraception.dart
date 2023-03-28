import 'package:flutter/material.dart';
import 'package:youphoria/shared/subtopic_card.dart';
import 'package:youphoria/explore/topics/gender_identities_card.dart';

class ContraceptionScreen extends StatelessWidget {
  const ContraceptionScreen({super.key});

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
                          "Contraception",
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
                          "By learning about the various contraceptive options and being open to discussing them, you can take charge of your sexual health and make responsible choices that work best for you. Being informed and proactive is a great way to ensure a healthier and more fulfilling experience.",
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
                        title: 'Barrier Methods',
                        description:
                            "Barrier methods, like condoms and dental dams, not only help prevent pregnancy but also protect against sexually transmitted infections (STIs).",
                      ),
                      SubtopicCard(
                        title: 'Hormonal Methods',
                        description:
                            "These methods, such as birth control pills, patches, and injections, use hormones to prevent pregnancy. While hormonal birth control can be effective for many people, it's important to be aware of potential side effects and drawbacks, which can include mood swings, weight gain, headaches, and changes in menstrual bleeding patterns.",
                      ),
                      SubtopicCard(
                        title: 'Intrauterine Devices (IUDs)',
                        description:
                            "IUDs are small, T-shaped devices inserted into the uterus by a healthcare provider. They can be hormonal or non-hormonal (copper) and offer long-term, reversible contraception.",
                      ),
                      SubtopicCard(
                        title: 'Emergency Contraception',
                        description:
                            "Also known as the 'morning-after pill,' emergency contraception can be used after unprotected sex or contraceptive failure to help prevent pregnancy. It's not meant as a primary birth control method but can be helpful in certain situations.",
                      ),
                      SubtopicCard(
                        title: 'Fertility Awareness Methods',
                        description:
                            "These methods involve tracking the menstrual cycle to identify fertile days and either abstaining from or using protection during those times. It's important to be aware that fertility awareness methods, including 'the rhythm method,' can be significantly less reliable than other contraceptive options, especially for teens whose cycles may be irregular.",
                      ),
                      SubtopicCard(
                        title: 'Abstinence',
                        description:
                            "Choosing not to engage in sexual activity is the only 100% effective way to prevent pregnancy and STIs. It's important to respect each person's choice to be sexually active or abstain. There's no right or wrong choice when it comes to being sexually active or abstaining; what matters most is that everyone feels comfortable, confident, and respected in their decisions.",
                      ),
                      SubtopicCard(
                        title: 'Sterilization',
                        description:
                            "This is a permanent form of birth control, such as tubal ligation or vasectomy, and is typically not recommended for teens or young adults. However, it's important to note that people with uteruses can sometimes face discrimination from doctors when seeking sterilization procedures like tubal ligation (getting your ‘tubes tied’), as they may be unfairly pressured to consider their potential desire for children in the future. Everyone has the right to make decisions about their own reproductive health, and it's essential to advocate for your needs and ensure your healthcare provider respects your choices.",
                      ),
                      SubtopicCard(
                        title: 'Inclusivity and Contraception',
                        description:
                            "Remember that contraception is important for people of all genders and orientations. Be open to discussing options with your partner(s) and healthcare provider to find the best choice for your unique situation.",
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
