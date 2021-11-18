import 'package:flutter/material.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({Key? key}) : super(key: key);

  @override
  _AchievementsScreenState createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/achievement.png'),
            width: 200,
            height: 200,
          ),
          SizedBox(height: 30),
          Text(
            'COMING SOON',
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
