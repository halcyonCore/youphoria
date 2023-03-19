import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class Consent {
  String title;
  String description;
  List<dynamic> subtopics;

  Consent({
    this.title = '',
    this.description = '',
    this.subtopics = const [],
  }) {
    setData();
  }

  Future<void> setData() async {
    final topic = await FirestoreService().getTopic('consent');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
  }
}
