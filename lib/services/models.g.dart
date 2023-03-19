// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topic _$TopicFromJson(Map<String, dynamic> json) => Topic(
      description: json['description'] as String? ?? '',
      title: json['title'] as String? ?? '',
      subtopics: json['subtopics'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$TopicToJson(Topic instance) => <String, dynamic>{
      'description': instance.description,
      'title': instance.title,
      'subtopics': instance.subtopics,
    };
