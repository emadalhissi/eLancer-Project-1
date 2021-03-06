import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDeveloperListTile extends StatelessWidget {
  const AboutDeveloperListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.buttonText = '',
    this.launchUrl = '',
    // required this.launchFunction,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subTitle;
  final String buttonText;
  final String launchUrl;
  // final void Function() launchFunction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 42,
        color: Colors.grey.shade800,
      ),
      title: Text(
        title,
        style: TextStyle(
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade800,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
          color: Colors.blueGrey,
          letterSpacing: 0,
          fontSize: 10,
        ),
      ),
      trailing: TextButton(
        // onPressed: () => _launchURL('tel:+972599680798'),
        onPressed: () => launchURL(launchUrl),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Color(0xff0597db),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch!';
}
