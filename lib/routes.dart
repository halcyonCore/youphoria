import 'package:youphoria/explore/explore.dart';
import 'package:youphoria/explore/topics/topic_communication.dart';
import 'package:youphoria/fyp/fyp.dart';
import 'package:youphoria/login/login.dart';
import 'package:youphoria/search/search.dart';
import 'package:youphoria/profile/profile.dart';
import 'package:youphoria/home/home.dart';

var appRoutes = {
  '/login': (context) => const LoginScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/search': (context) => SearchScreen(),
  '/fyp': (context) => const FypScreen(),
  '/home': (context) => const HomeScreen(),
  '/explore': (context) => ExploreScreen(),
  '/communication': (context) => CommunicationScreen(),
};
