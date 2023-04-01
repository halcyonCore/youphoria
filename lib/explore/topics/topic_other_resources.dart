import 'package:flutter/material.dart';
import 'package:youphoria/explore/topics/hotline_resources_card.dart';
import 'package:youphoria/explore/topics/other_resources_card.dart';
import 'package:youphoria/shared/phone_number_link.dart';
import 'package:youphoria/shared/web_link.dart';

class OtherResourcesScreen extends StatelessWidget {
  const OtherResourcesScreen({super.key});

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
                          "Other Resources",
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
                          "",
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
                      OtherResourcesCard(
                        title: 'Bedsider',
                        description:
                            "Bedsider is an online birth control support network that provides information on different birth control methods and helps users find nearby providers.",
                        webLink: WebLink(
                          url: "https://www.bedsider.org/",
                        ),
                      ),
                      OtherResourcesCard(
                        title: 'Title X Family Planning Clinics',
                        description:
                            "Title X clinics provide affordable reproductive health care services, including birth control, STI testing, and cancer screenings.",
                        webLink: WebLink(
                          url: "https://opa-fpclinicdb.hhs.gov/",
                        ),
                      ),
                      OtherResourcesCard(
                        title: 'Abortion Finder',
                        description:
                            "Abortion Finder is a user-friendly search platform that connects individuals with a comprehensive database of over 750 verified abortion providers throughout the nation. By simply entering your age, the first day of your last menstrual period, and your location, Abortion Finder will generate a list of nearby abortion providers who can assist you with your needs.",
                        webLink: WebLink(
                          url: "https://www.abortionfinder.org/",
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
