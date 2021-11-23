import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutELancerScreen extends StatefulWidget {
  const AboutELancerScreen({Key? key}) : super(key: key);

  @override
  _AboutELancerScreenState createState() => _AboutELancerScreenState();
}

class _AboutELancerScreenState extends State<AboutELancerScreen> {
  final String _eLancerWebsite = 'https://www.elancer.ps/';
  final String _eLancerFbPage = 'https://www.facebook.com/elancerpalestine/';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(0.0, 1.0),
              ),
            ],
          ),
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
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
                            text: AppLocalizations.of(context)!.aboutELancerScreen_paragraphNo1_beforeButton,
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 19,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: AppLocalizations.of(context)!.aboutELancerScreen_drososButton,
                            style: TextStyle(
                              color: Colors.blue.shade800,
                              fontSize: 19,
                              fontFamily: 'Roboto',
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
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
                            text: AppLocalizations.of(context)!.aboutELancerScreen_paragraphNo1_afterButton,
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 19,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
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
                AppLocalizations.of(context)!.aboutELancerScreen_paragraphNo2,
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppLocalizations.of(context)!.aboutELancerScreen_paragraphNo3,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  AppLocalizations.of(context)!.aboutELancerScreen_objectiveNo1,
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
                  AppLocalizations.of(context)!.aboutELancerScreen_objectiveNo2,
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
                  AppLocalizations.of(context)!.aboutELancerScreen_objectiveNo3,
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
                  AppLocalizations.of(context)!.aboutELancerScreen_objectiveNo4,
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
                  AppLocalizations.of(context)!.aboutELancerScreen_objectiveNo5,
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
                          image: AssetImage('images/elancer_logo_.png'),
                          fit: BoxFit.fitWidth,
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
      ),
    );
  }

  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch!';
}
