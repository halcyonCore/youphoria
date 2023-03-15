import 'package:youphoria/explore/explore.dart';
import 'package:youphoria/fyp/fyp.dart';
import 'package:youphoria/login/login.dart';
import 'package:youphoria/search/search.dart';
import 'package:youphoria/user/user.dart';

var appRoutes = {
  '/login': (context) => const LoginScreen(),
  '/user': (context) => const UserScreen(),
  '/search': (context) => const SearchScreen(),
  '/fyp': (context) => const FypScreen(),
  '/': (context) => const ExploreScreen(),
};
