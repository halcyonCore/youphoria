// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:youphoria/shared/loading.dart';
// import 'package:youphoria/shared/models/topic.dart';

// DUMMY DATA 4 TESTING
class Topic {
  final String name;
  final String imageUrl;

  Topic({required this.name, required this.imageUrl});
}

final List<Topic> dummyTopics = [
  Topic(name: 'Topic 1', imageUrl: 'https://example.com/image1.jpg'),
  Topic(name: 'Topic 2', imageUrl: 'https://example.com/image2.jpg'),
  Topic(name: 'Topic 3', imageUrl: 'https://example.com/image3.jpg'),
  Topic(name: 'Topic 4', imageUrl: 'https://example.com/image3.jpg'),
  Topic(name: 'Topic 5', imageUrl: 'https://example.com/image3.jpg'),
  Topic(name: 'Topic 6', imageUrl: 'https://example.com/image3.jpg'),
  Topic(name: 'Topic 7', imageUrl: 'https://example.com/image3.jpg'),
  Topic(name: 'Topic 8', imageUrl: 'https://example.com/image3.jpg'),
  Topic(name: 'Topic 9', imageUrl: 'https://example.com/image3.jpg'),
];
// END DUMMY DATA

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF0c1421),
        title: const Text(
          'Explore',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
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
                    SizedBox(
                      height: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/fyp');
                        },
                        clipBehavior: Clip.antiAlias, // <--add this
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(18.0), // <--add this
                          ),
                          padding: EdgeInsets.zero, // <--add this
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/gradient-placeholder.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
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
                    return Container(
                      margin: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/communication');
                        },
                        clipBehavior: Clip.antiAlias, // <--add this
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(18.0), // <--add this
                          ),
                          padding: EdgeInsets.zero, // <--add this
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/topic-communication.png'),
                              fit: BoxFit.cover,
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
      // bottomNavigationBar: BottomNavigationBar(),
    );
  }
}
