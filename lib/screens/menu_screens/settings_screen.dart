import 'package:elancer_project_1/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xff049bde),
                    Color(0xff00afef),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 82,
              top: 25,
              child: Image(
                image: AssetImage('images/a_c_1.png'),
                height: 90,
                width: 90,
              ),
            ),
            Positioned(
              left: 140,
              top: -8,
              child: Image(
                image: AssetImage('images/a_c_2.png'),
                height: 90,
                width: 90,
              ),
            ),
          ],
        ),
        title: Text('Settings'),
        actions: [
          // IconButton(
          //   onPressed: hasFirstActionsIcon ? (){} : null,
          //   icon: Icon(firstActionsIconButton, size: 20),
          // ),
          // IconButton(
          //   onPressed: hasSecondActionsIcon ? (){} : null,
          //   icon: Icon(secondActionsIconButton, size: 20),
          // ),
          // const SizedBox(width: 5),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, size: 30),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/settings.png'),
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
      ),
    );
  }
}