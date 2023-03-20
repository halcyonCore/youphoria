import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:youphoria/explore/explore.dart';
import 'package:youphoria/login/login.dart';
import 'package:youphoria/theme.dart';
import 'package:youphoria/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return const Text('error');
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          final theme = YouphoriaTheme();
          return MaterialApp(
            title: 'Youphoria',
            home: const LoginScreen(),
            routes: appRoutes,
            theme: theme.toThemeData(),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const MaterialApp(
            home: Scaffold(
          body: Center(
            child: Text('loading'),
          ),
        ));
      },
    );
  }
}
