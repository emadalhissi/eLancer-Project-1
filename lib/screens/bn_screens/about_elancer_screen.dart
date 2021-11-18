import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutELancerScreen extends StatefulWidget {
  const AboutELancerScreen({Key? key}) : super(key: key);

  @override
  _AboutELancerScreenState createState() => _AboutELancerScreenState();
}

class _AboutELancerScreenState extends State<AboutELancerScreen> {
  final String _eLancerWebsite = 'https://www.elancer.ps/';
  final String _eLancerFbPage = 'https://www.facebook.com/elancerpalestine/';

  final String _drosos = 'Drosos';
  final String _aboutInfo1 =
      'This project is implemented by UCAS Technology Incubator in partnership with ';
  final String _aboutInfo2 =
      'The Online Freelancing Project “eLancer” aims to spread the culture of online freelancing for youth, through awareness-raising workshops and providing technical and mentoring and online freelancing training programs in field of work that are compatible with their skills and abilities, while providing co-working spaces in an equipped environment to increase their income and their online work.';
  final String _aboutInfo3 =
      'The project is also concerned with developing a set of educational tools in technical fields and providing them through an online platform. eLacner Project main Goal: Changing of the traditional job employment mindset for the graduates in Gaza Strip towards online freelancing. The project goal can be achieved through the following objectives:';
  final List<String> _objectives = <String>[
    '1) Improving graduates\' self-learning skills by providing them with educational resources via the Internet.',
    '2) Providing technical, freelancing, and soft skills training.',
    '3) Increasing the income and work opportunities of graduates through online freelancing.',
    '4) Raising the competitive competence of graduates by integrating them into a global competitive work environment.',
    '5) Enhancing cooperation and partnership with public sector institutions and parties related to the activities and outputs of the project.',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: _aboutInfo1,
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 19,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        TextSpan(
                          text: _drosos,
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontSize: 19,
                            fontFamily: 'Roboto',
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Future.delayed(
                                Duration(seconds: 1),
                                () {
                                  Navigator.pushNamed(
                                      context, '/founder_screen');
                                },
                              );
                            },
                        ),
                        TextSpan(
                          text: ' Foundation.',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 19,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: IconButton(
                        onPressed: () => launchURL(_eLancerFbPage),
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
                    CircleAvatar(
                      radius: 25,
                      child: IconButton(
                        onPressed: () => launchURL(_eLancerWebsite),
                        icon: Image(
                          image: AssetImage('images/www.png'),
                          fit: BoxFit.fill,
                          width: 50,
                          height: 50,
                        ),
                        iconSize: 50,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 20),
            SizedBox(height: 15),
            Text(
              _aboutInfo2,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            Text(
              _aboutInfo3,
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                _objectives[0],
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                _objectives[1],
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                _objectives[2],
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                _objectives[3],
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                _objectives[4],
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage('images/elancer_logo_min.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        alignment: AlignmentDirectional.bottomEnd,
                        image: AssetImage('images/drosos_logo.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch!';
}
