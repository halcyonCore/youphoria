import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class Resources {
  String title;
  String description;
  List<dynamic> subtopics;

  Resources({
    this.title = '',
    this.description = '',
    this.subtopics = const [],
  }) {
    setData();
  }

  Future<void> setData() async {
    final topic = await FirestoreService().getTopic('resources');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
  }
}
