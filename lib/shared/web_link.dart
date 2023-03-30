import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebLink extends StatelessWidget {
  final String url;

  const WebLink({
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Text(
        url,
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
