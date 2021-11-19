import 'package:flutter/material.dart';

class FounderScreen extends StatefulWidget {
  const FounderScreen({Key? key}) : super(key: key);

  @override
  _FounderScreenState createState() => _FounderScreenState();
}

class _FounderScreenState extends State<FounderScreen> {
  @override
  final String info =
      'The Drosos Foundation strives to enable people in difficult situations to live in dignity. The Foundation, in cooperation with partner institutions, develops and supports projects that focus on strengthening the life skills of young people, by encouraging creativity and economic independence. The Foundation is active in Switzerland, Eastern Germany, Egypt, Jordan, Lebanon, Morocco, Palestine and Tunisia. The Foundation\'s distinguished approach to sustainability has made it a renowned international partner in the field of development. The institution is ideologically, politically and religiously independent.';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Founder',
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
                  'DROSOS',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  info,
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
