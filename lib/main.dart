import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:youphoria/explore/explore.dart';
import 'package:youphoria/login/login.dart';
import 'package:youphoria/theme.dart';
// import 'firebase_options.dart';
import 'package:youphoria/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const App());
}

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const App());
// }

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
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
          return MaterialApp(
            title: 'Youphoria',
            home: const LoginScreen(),
            routes: appRoutes,
            theme: appTheme,
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
