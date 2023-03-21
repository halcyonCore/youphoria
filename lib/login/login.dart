import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/services/auth.dart';
import 'package:rive/rive.dart';
import 'dart:ui';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset(
            'assets/animations/shapes4.riv',
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
              child: const SizedBox(),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(1),
                  //   image: DecorationImage(
                  //     image: AssetImage("assets/images/youphoria2.png"),
                  //     fit: BoxFit.fitWidth,
                  //   ),
                  // ),
                  padding: const EdgeInsets.only(top: 200, bottom: 150),
                  child: Column(
                    children: [
                      Text(
                        'YOUphoria',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Feel confident in your sexuality',
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LoginButton(
                        icon: FontAwesomeIcons.user,
                        text: 'Continue as guest',
                        loginMethod: AuthService().anonLogin,
                      ),
                      LoginButton(
                        icon: FontAwesomeIcons.google,
                        text: 'Sign in with Google',
                        loginMethod: AuthService().googleLogin,
                      ),
                      LoginButton(
                        icon: FontAwesomeIcons.apple,
                        text: 'Sign in with Apple (not complete)',
                        loginMethod: AuthService().googleLogin,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  // final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton({
    super.key,
    // required this.color,
    required this.icon,
    required this.text,
    required this.loginMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: OutlinedButton.icon(
        icon: Icon(
          icon,
          size: 20,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(24),
          side: BorderSide(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        onPressed: () async {
          bool isLoggedIn = await loginMethod();
          if (isLoggedIn) {
            Navigator.pushReplacementNamed(context, '/home');
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('Error logging in. Please try again.')),
            );
          }
        },
        label: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
    );
  }
}
