import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FounderScreen extends StatefulWidget {
  const FounderScreen({Key? key}) : super(key: key);

  @override
  _FounderScreenState createState() => _FounderScreenState();
}

class _FounderScreenState extends State<FounderScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.founderScreen_screenMainTitle,
          style: TextStyle(
            color: Colors.grey.shade800,
          ),
        ),
        centerTitle: true,
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
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 150,
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.founderScreen_drososName,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context)!.founderScreen_about,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
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
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
