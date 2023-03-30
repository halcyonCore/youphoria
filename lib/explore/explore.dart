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
    url: '/gender',
  ),
  Topic(
      name: 'Sexual Orientation',
      img: 'assets/images/sexual-orientation.png',
      url: '/sexual-orientation'),
  Topic(
      name: 'Communication',
      img: 'assets/images/communication.png',
      url: '/communication'),
  Topic(name: 'Puberty', img: 'assets/images/puberty.png', url: '/puberty'),
  Topic(name: 'Consent', img: 'assets/images/consent.png', url: '/consent'),
  Topic(
      name: 'Contraception',
      img: 'assets/images/contraception.png',
      url: '/contraception'),
  Topic(name: 'STIs', img: 'assets/images/sti.png', url: '/sti'),
  Topic(name: 'Hotlines', img: 'assets/images/hotlines.png', url: '/hotlines'),
  Topic(
      name: 'Other Resources',
      img: 'assets/images/other-resources.png',
      url: '/other-resources'),
];
// END DUMMY DATA

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(40),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        title: Text(
          'Explore',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  padding: const EdgeInsets.only(top: 20, right: 11, left: 11),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    childAspectRatio: 1.6,
                    children: List.generate(
                      dummyTopics.length,
                      (index) {
                        final topic = dummyTopics[index];
                        final image = dummyTopics[index].img;
                        final url = dummyTopics[index].url;
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          margin: const EdgeInsets.all(8),
                          child: OutlinedButton(
                            clipBehavior: Clip.antiAlias, // <--add this

                            onPressed: () {
                              Navigator.pushNamed(context, url);
                            },
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.zero, // <--add this
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                borderRadius: BorderRadius.circular(1),
                                image: DecorationImage(
                                  image: AssetImage(image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 12.0, right: 8.0, left: 2.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    topic.name,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
