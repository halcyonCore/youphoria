// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:youphoria/shared/bottom_nav.dart';
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

// class ExploreScreen extends StatelessWidget {
//   const ExploreScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Topic>>(
//       // future: FirestoreService().getTopics(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const LoadingScreen();
//         } else if (snapshot.hasError) {
//           return Center(child: Text('Error: ${snapshot.error}'));
//         } else if {
//           return Scaffold(
//             appBar: AppBar(
//               title: const Text('Explore Topics'),
//             ),
//             body: GridView.count(
//               crossAxisCount: 2,
//               children: snapshot.data!.map((topic) { // used copilot to generate - check with tutorial if issues
//                 return Card(
//                   child: Column(
//                     children: [
//                       Expanded(
//                         child: Placeholder(),
//                       ),
//                       Text(topic.name),
//                     ],
//                   ),
//                 );
//               }).toList(),
//             ),
//             bottomNavigationBar: const BottomNavBar(),
//           );
//         } else {
//           return const Text("No topics found in Firestore. Check database");
//         }
//       },
//     );
//   }
// }

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          // style: TextStyle(fontFamily: 'CuteDropCaps', fontSize: 50),
        ),
      ),
      body: GridView.count(
        // primary: false,
        // padding: const EdgeInsets.all(20),
        // crossAxisSpacing: 20,
        crossAxisCount: 2,
        childAspectRatio: 1.6,
        children: List.generate(
          dummyTopics.length,
          (index) {
            final topic = dummyTopics[index];
            return Container(
              margin: const EdgeInsets.all(4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Placeholder(),
                      ),
                      // Text(topic.name),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
