import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class Hotlines {
  String title;
  String description;
  List<dynamic> subtopics;

  Hotlines({
    this.title = '',
    this.description = '',
    this.subtopics = const [],
  }) {
    setData();
  }

  Future<void> setData() async {
    final topic = await FirestoreService().getTopic('hotlines');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
  }
}
