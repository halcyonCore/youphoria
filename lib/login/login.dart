import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youphoria/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'YOUphoria',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Flexible(
                child: LoginButton(
              color: Colors.deepPurple,
              icon: FontAwesomeIcons.userAstronaut,
              text: 'Continue as guest',
              loginMethod: AuthService().anonLogin,
            ))
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
    required this.loginMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(24),
          backgroundColor: color,
        ),
        // onPressed: () => loginMethod(),
        onPressed: () async {
          bool isLoggedIn = await loginMethod();
          if (isLoggedIn) {
            Navigator.pushReplacementNamed(context,
                '/home'); // Replace '/home' with the route name of the home screen.
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content:
                      Text('Error logging in as guest. Please try again.')),
            );
          }
        },

        label: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
