import 'package:flutter/material.dart';
import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';
import 'package:youphoria/services/models.dart';

Communication getModel() {
  final communication = Communication();
  communication.setData();
  return communication;
}

Communication c = getModel();

class FypScreen extends StatelessWidget {
  const FypScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'FYP',
            ),
            ElevatedButton(
              child: const Text('Get Title'),
              onPressed: () => {print(c.title)},
            ),
            ElevatedButton(
              child: const Text('Get Description'),
              onPressed: () => {print(c.description)},
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF0c1421),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0c1421),
        title: const Text(
          'FYP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}




// Archive / trash


  // Future<String> dataModel() async {
  //   final topic = await FirestoreService().getTopic('communication');
  //   final title = topic!['title'];
  //   final description = topic['description'];
  //   final subtopics = topic['subtopics'];
  //   return title;
  // }


              // final communication = Communication();
              // await communication.setData();
              // print(communication.title);
              // for (var i in communication.subtopics) {
              //   print(i);
              // }

              // onPressed: () => {
              //   dataModel().then(
              //     (value) => print(value),
              //   )
              // },
              // onPressed: () async {
              //   final topic =
              //       await FirestoreService().getTopic('communication');
              //   print(topic!['title']);
              // },