import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class Puberty {
  String title;
  String description;
  List<dynamic> subtopics;

  Puberty({
    this.title = '',
    this.description = '',
    this.subtopics = const [],
  }) {
    setData();
  }

  Future<void> setData() async {
    final topic = await FirestoreService().getTopic('puberty');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
  }
}
