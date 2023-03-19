import 'package:youphoria/services/services.dart';
import 'package:youphoria/shared/shared.dart';

class Contraception {
  String title;
  String description;
  List<dynamic> subtopics;

  Contraception({
    this.title = '',
    this.description = '',
    this.subtopics = const [],
  }) {
    setData();
  }

  Future<void> setData() async {
    final topic = await FirestoreService().getTopic('contraception');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
  }
}
