import 'package:flutter/material.dart';

class EnterNameScreen extends StatefulWidget {
  const EnterNameScreen({Key? key}) : super(key: key);

  @override
  _EnterNameScreenState createState() => _EnterNameScreenState();
}

class _EnterNameScreenState extends State<EnterNameScreen> {
  late TextEditingController _fullNameEditingController;

  @override
  void initState() {
    super.initState();
    _fullNameEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _fullNameEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/bg.png'),
              ),
            ],
          ),
          Positioned(
            height: 600,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                'Enter Full Name',
                style: TextStyle(
                  color: Color(0xff373737),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                TextField(
                  controller: _fullNameEditingController,
                  onChanged: (value) {
                    setState(() {
                      _fullNameEditingController;
                    });
                  },
                  showCursor: false,
                  decoration: InputDecoration(
                    hintText: 'Full Name...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE5E5E5),
                        width: 1,
                      ),
                    ),
                    // labelText: 'Username or Email',
                    labelStyle: TextStyle(
                      color: Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: runFullNameNextButton()
                      ? () {
                          Future.delayed(Duration(milliseconds: 500), () {
                            Navigator.pushNamed(context, '/select_age_screen');
                          });
                        }
                      : null,
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    primary: Color(0xff42C6A5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool runFullNameNextButton() {
    if (_fullNameEditingController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
