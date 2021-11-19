import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkStaffCard extends StatelessWidget {
  const WorkStaffCard({
    Key? key,
    required this.image,
    required this.name,
    required this.position,
    this.facebookPage = '',
    this.email = '',
    this.number = '',
  }) : super(key: key);

  final String image;
  final String name;
  final String position;
  final String facebookPage;
  final String email;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.transparent,
          ),
          Spacer(),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 10),
          Text(
            position,
            style: TextStyle(
              // fontStyle: FontStyle.normal,
              fontSize: 15,
              color: Colors.blueGrey,
              letterSpacing: 0,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 22,
                child: IconButton(
                  onPressed: facebookPage != ''
                      ? () => launchURL(facebookPage)
                      : () {},
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
                radius: 22,
                child: IconButton(
                  onPressed:
                      email != '' ? () => launchURL('mailto:$email') : () {},
                  icon: Image(
                    image: AssetImage('images/email.png'),
                    fit: BoxFit.fill,
                    width: 50,
                    height: 50,
                  ),
                  iconSize: 50,
                ),
                backgroundColor: Colors.transparent,
              ),
              CircleAvatar(
                radius: 22,
                child: IconButton(
                  onPressed:
                      number != '' ? () => launchURL('tel:$number') : () {},
                  icon: Image(
                    image: AssetImage('images/phone.png'),
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
          SizedBox(height: 5),
        ],
      ),
    );
  }

  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch!';
}
