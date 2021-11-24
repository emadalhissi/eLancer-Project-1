import 'package:elancer_project_1/shared_preferences/shared_preferences_controller.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Welcome, ' + SharedPreferencesController().getFullName,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          const Image(
            image: AssetImage('images/welcome.png'),
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 30),
          const Spacer(),
          Text(
            '',
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
