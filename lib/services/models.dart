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
  });

  Future<String> setData() async {
    final topic = await FirestoreService().getTopic('communication');
    title = topic!['title'];
    description = topic['description'];
    subtopics = topic['subtopics'];
    return "Done";
  }
}






// Archive / trash

// import 'package:json_annotation/json_annotation.dart';
// part 'models.g.dart';

// @JsonSerializable()
// class Topic {
//   String description;
//   String title;
//   List<Map<String, String>> subtopics;

//   Topic({this.description = '', this.title = '', this.subtopics = const []});

//   factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
//   Map<String, dynamic> toJson() => _$TopicToJson(this);
// }