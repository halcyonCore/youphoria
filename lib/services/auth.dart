import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter/material.dart';

// class AuthService {
//   final userStream = FirebaseAuth.instance.authStateChanges();
//   final user = FirebaseAuth.instance.currentUser;

//   Future<void> anonLogin() async {
//     try {
//       await FirebaseAuth.instance.signInAnonymously();
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       await FirebaseAuth.instance.signOut();
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
class AuthService {
  final userStream = FirebaseAuth.instance.authStateChanges();
  final user = FirebaseAuth.instance.currentUser;

  Future<bool> anonLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
