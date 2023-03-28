import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneNumberLink extends StatelessWidget {
  final String phoneNumber;

  const PhoneNumberLink({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch('tel:$phoneNumber'),
      child: Text(
        phoneNumber,
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
