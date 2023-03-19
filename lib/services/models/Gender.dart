import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class Gender {
  String title;
  String description;
  List<dynamic> subtopics;

  Gender({
    this.title = '',
    this.description = '',
    this.subtopics = const [],
  }) {
    setData();
  }

  Future<void> setData() async {
    final topic = await FirestoreService().getTopic('gender');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
  }
}
