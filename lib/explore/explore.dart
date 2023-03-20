// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:youphoria/shared/loading.dart';
// import 'package:youphoria/shared/models/topic.dart';
import 'package:animations/animations.dart';

// DUMMY DATA 4 TESTING
class Topic {
  final String name;
  final String url;
  final String img;

  Topic({required this.name, required this.url, required this.img});
}

final List<Topic> dummyTopics = [
  Topic(
    name: 'Gender',
    img: 'assets/images/gender.png',
    url: '',
  ),
  Topic(
      name: 'Sexual Orientation',
      img: 'assets/images/sexual-orientation.png',
      url: ''),
  Topic(name: 'Communication', img: 'assets/images/communication.png', url: ''),
  Topic(name: 'Puberty', img: 'assets/images/puberty.png', url: ''),
  Topic(name: 'Consent', img: 'assets/images/consent.png', url: ''),
  Topic(name: 'Contraception', img: 'assets/images/contraception.png', url: ''),
  Topic(name: 'STIs', img: 'assets/images/sti.png', url: ''),
  Topic(name: 'Hotlines', img: 'assets/images/hotlines.png', url: ''),
  Topic(
      name: 'Other Resources',
      img: 'assets/images/other-resources.png',
      url: ''),
];
// END DUMMY DATA

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        automaticallyImplyLeading: false,
        // backgroundColor: const Color(0xFF0c1421),
        title: const Text(
          'Explore',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(
          //   color: Theme.of(context).colorScheme.primary,
          //   gradient: LinearGradient(
          //     begin: Alignment.bottomCenter,
          //     end: Alignment.topCenter,
          //     colors: [
          //       Theme.of(context).colorScheme.background,
          //       Theme.of(context).colorScheme.primary,
          //     ],
          //   ),
          // ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // For You Page Text
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 8.0, left: 11.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "For You Page",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              // Container for button
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 12.0, left: 12.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        height: 200,
                        child: FilledButton.tonal(
                          onPressed: () {
                            Navigator.pushNamed(context, '/fyp');
                          },
                          style: FilledButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primaryContainer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: Container(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Browse all text
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 8.0, left: 11.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Browse all",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              // Container for grid of topics
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 1.6,
                  children: List.generate(
                    dummyTopics.length,
                    (index) {
                      final topic = dummyTopics[index];
                      final image =
                          dummyTopics[index].img ?? 'assets/images/tile.png';

                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        margin: const EdgeInsets.all(8),
                        child: FilledButton.tonal(
                          clipBehavior: Clip.antiAlias, // <--add this

                          onPressed: () {
                            Navigator.pushNamed(context, '/communication');
                          },
                          style: FilledButton.styleFrom(
                            padding: EdgeInsets.zero, // <--add this

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            // .withOpacity(.3),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              image: DecorationImage(
                                image: AssetImage(image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 12.0, right: 8.0, left: 2.0),
                              child: Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Text(
                                  topic.name,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(),
    );
  }
}
