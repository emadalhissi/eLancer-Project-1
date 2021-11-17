import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AboutDeveloperScreen extends StatefulWidget {
  const AboutDeveloperScreen({Key? key}) : super(key: key);

  @override
  _AboutDeveloperScreenState createState() => _AboutDeveloperScreenState();
}

class _AboutDeveloperScreenState extends State<AboutDeveloperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 80,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: CircleAvatar(
            backgroundColor: Color(0xff0597db),
            radius: 40,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xff0c6fb8),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xfffec32a),
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage('images/my_photo.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        Text(
                          'Emad Alihssi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Mobile Developer',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xfffec32a),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
