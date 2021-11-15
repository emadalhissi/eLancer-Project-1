import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController _usernameOrEmailEditingController;
  late TextEditingController _passwordEditingController;

  @override
  void initState() {
    super.initState();
    _usernameOrEmailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameOrEmailEditingController.dispose();
    _passwordEditingController.dispose();
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
            height: 310,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color(0xff373737),
                  fontSize: 32,
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
                SizedBox(height: 40),
                TextField(
                  controller: _usernameOrEmailEditingController,
                  onChanged: (value) {
                    setState(() {
                      _usernameOrEmailEditingController;
                    });
                  },
                  showCursor: false,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE5E5E5),
                        width: 1,
                      ),
                    ),
                    labelText: 'Username or Email',
                    labelStyle: TextStyle(
                      color: Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 13),
                TextField(
                  controller: _passwordEditingController,
                  onChanged: (value) {
                    setState(() {
                      _passwordEditingController;
                    });
                  },
                  showCursor: false,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE5E5E5),
                        width: 1,
                      ),
                    ),
                    labelText: 'Enter Password',
                    labelStyle: TextStyle(
                      color: Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: runLoginButton() ? () {} : null,
                  child: Text(
                    'LOGIN',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New User ?',
                      style: TextStyle(
                        color: Color(0xff919191),
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Future.delayed(Duration(milliseconds: 500), () {
                          Navigator.pushReplacementNamed(
                              context, '/register_screen');
                        });
                      },
                      child: Text(
                        'Sign Up Now',
                        style: TextStyle(
                          color: Color(0xff40C4A3),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool runLoginButton() {
    if (_usernameOrEmailEditingController.text.isNotEmpty && _passwordEditingController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
