import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class Communication {
  String title;
  String description;
  List<dynamic> subtopics;

  Communication({
    this.title = '',
    this.description = '',
    this.subtopics = const [],
  }) {
    setData();
  }

  Future<void> setData() async {
    final topic = await FirestoreService().getTopic('communication');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
  }
}
