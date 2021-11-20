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
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Welcome, ' + SharedPreferencesController().getFullName,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          Spacer(),
          Image(
            image: AssetImage('images/welcome.png'),
            width: 200,
            height: 200,
          ),
          SizedBox(height: 30),
          Spacer(),
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
