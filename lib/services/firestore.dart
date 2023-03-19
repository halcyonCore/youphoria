import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';
import 'package:youphoria/services/auth.dart';
import 'package:youphoria/services/models.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<Map<String, dynamic>?> getTopic(String title) async {
    try {
      final docRef = _db.collection('topics').doc(title);
      final doc = await docRef.get();
      final data = doc.data() as Map<String, dynamic>;
      print("I'm here! ${data['title']}");
      return data;
    } catch (e) {
      print("Error getting document: $e");
      return null;
    }
  }
}






// Archive / trash
  // Future<List<Topic>> getTopics() async {
  //   var ref = _db.collection('topics');
  //   var snapshot = await ref.get();
  //   var data = snapshot.docs.map((s) => s.data());
  //   var topics = data.map((d) => Topic.fromJson(d));
  //   return topics.toList();
  // }

  // Future<Topic> getTopic(String title) async {
  //   var ref = _db.collection('topics').doc(title);
  //   var snapshot = await ref.get();
  //   return Topic.fromJson(snapshot.data() ?? {});
  // }

  // Future<Map<String, dynamic>> getTopic(String title) async {
  //   final docRef = _db.collection('topics').doc(title);
  //   docRef.get().then(
  //     (DocumentSnapshot doc) {
  //       // return doc;
  //       final data = doc.data() as Map<String, dynamic>;
  //       print("I'm here! ${data['title']}");
  //       return data;
  //     },
  //     onError: (e) => print("Error getting document: $e"),
  //   );
  // }