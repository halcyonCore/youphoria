import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class SexualOrientation {
  String title;
  String description;
  List<dynamic> subtopics;

  SexualOrientation({
    this.title = '',
    this.description = '',
    this.subtopics = const [],
  }) {
    setData();
  }

  Future<void> setData() async {
    final topic = await FirestoreService().getTopic('sexual-orientation');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
  }
}
