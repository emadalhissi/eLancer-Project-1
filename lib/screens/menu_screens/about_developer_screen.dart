import 'package:elancer_project_1/widgets/about_developer_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDeveloperScreen extends StatefulWidget {
  const AboutDeveloperScreen({Key? key}) : super(key: key);

  @override
  _AboutDeveloperScreenState createState() => _AboutDeveloperScreenState();
}

class _AboutDeveloperScreenState extends State<AboutDeveloperScreen> {
  String _facebookUrl = 'https://www.facebook.com/EmadAlhissi/';
  String _instagramUrl = 'https://www.instagram.com/EmadAlhissi/';
  String _whatsAppUrl = 'https://wa.me/972599680798';
  String _youTubeUrl =
      'https://www.youtube.com/channel/UCjB_UqtT5lYVGqKTQZ-qhgw';
  String _phoneNumber = 'tel:+972599680798';
  String _email = 'mailto:emadalhissi@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                            'Emad Alhissi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Mobile Developer',
                            style: TextStyle(
                              // fontStyle: FontStyle.normal,
                              fontSize: 16,
                              color: Colors.blueGrey,
                              letterSpacing: 0,
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AboutDeveloperListTile(
                        icon: Icons.phone_android_outlined,
                        title: 'Mobile',
                        subTitle: '+972599680798',
                        buttonText: 'Call Now',
                        launchUrl: _phoneNumber,
                      ),
                      AboutDeveloperListTile(
                        icon: Icons.email,
                        title: 'Email',
                        subTitle: 'emadalhissi@gmail.com',
                        buttonText: 'Send Email',
                        launchUrl: _email,
                      ),
                      AboutDeveloperListTile(
                        icon: Icons.location_on_sharp,
                        title: 'Address',
                        subTitle: 'Gaza, Palestine',
                      ),
                      AboutDeveloperListTile(
                        icon: Icons.date_range,
                        title: 'D.O.B',
                        subTitle: '22-01-2021',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 33,
                    child: IconButton(
                      onPressed: () => launchURL(_facebookUrl),
                      icon: Image(
                        image: AssetImage('images/facebook-logo.png'),
                        fit: BoxFit.fill,
                        width: 50,
                        height: 50,
                      ),
                      iconSize: 50,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 33,
                    child: IconButton(
                      onPressed: () => launchURL(_instagramUrl),
                      icon: Image(
                        image: AssetImage('images/instagram.png'),
                        fit: BoxFit.fill,
                        width: 50,
                        height: 50,
                      ),
                      iconSize: 50,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 35,
                    child: IconButton(
                      onPressed: () => launchURL(_whatsAppUrl),
                      icon: Image(
                        image: AssetImage('images/whatsapp.png'),
                        fit: BoxFit.fill,
                        width: 60,
                        height: 60,
                      ),
                      iconSize: 60,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 35,
                    child: IconButton(
                      onPressed: () => launchURL(_youTubeUrl),
                      icon: Image(
                        image: AssetImage('images/youtube.png'),
                        fit: BoxFit.fill,
                        width: 55,
                        height: 55,
                      ),
                      iconSize: 55,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch!';
}
