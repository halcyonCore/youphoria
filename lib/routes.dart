import 'package:youphoria/chat/chat.dart';
import 'package:youphoria/explore/explore.dart';
import 'package:youphoria/explore/topics/topic_communication.dart';
import 'package:youphoria/explore/topics/topic_gender.dart';
import 'package:youphoria/explore/topics/topic_puberty.dart';
import 'package:youphoria/explore/topics/topic_sexual_orientation.dart';
import 'package:youphoria/fyp/fyp.dart';
import 'package:youphoria/login/login.dart';
import 'package:youphoria/search/search.dart';
import 'package:youphoria/profile/profile.dart';
import 'package:youphoria/home/home.dart';

var appRoutes = {
  '/login': (context) => const LoginScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/search': (context) => const SearchScreen(),
  '/fyp': (context) => const FypScreen(),
  '/home': (context) => const HomeScreen(),
  '/explore': (context) => const ExploreScreen(),
  '/communication': (context) => const CommunicationScreen(),
  '/gender': (context) => const GenderScreen(),
  '/sexual-orientation': (context) => const SexualOrientationScreen(),
  '/puberty': (context) => const PubertyScreen(),
  '/chat': (context) => const ChatScreen(),
};
