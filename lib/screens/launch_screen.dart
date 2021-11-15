import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login_screen');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'eLancer',
            style: TextStyle(
              fontSize: 55,
              fontStyle: FontStyle.italic,
              color: Color(0xff0f62ac),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xffd8edf7),
            Color(0xffe0f2fc),
          ],
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
        )),
      ),
    );
  }
}
