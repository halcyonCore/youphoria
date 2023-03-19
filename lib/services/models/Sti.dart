import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class Sti {
  String title;
  String description;
  List<dynamic> subtopics;

  Sti({
    this.title = '',
    this.description = '',
    this.subtopics = const [],
  }) {
    setData();
  }

  Future<void> setData() async {
    final topic = await FirestoreService().getTopic('sti');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
  }
}
