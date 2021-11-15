import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _usernameEditingController;
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;

  @override
  void initState() {
    super.initState();
    _usernameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameEditingController.dispose();
    _emailEditingController.dispose();
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
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                'Register',
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
                  controller: _usernameEditingController,
                  onChanged: (value) {
                    setState(() {
                      _usernameEditingController;
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
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      color: Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 13),
                TextField(
                  controller: _emailEditingController,
                  onChanged: (value) {
                    setState(() {
                      _emailEditingController;
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
                    labelText: 'Email',
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
                  obscureText: true,
                  obscuringCharacter: '*',
                  showCursor: false,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE5E5E5),
                        width: 1,
                      ),
                    ),
                    labelText: 'Create Password',
                    labelStyle: TextStyle(
                      color: Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: runRegisterButton() ? () {
                    Future.delayed(Duration(milliseconds: 500), () {
                      Navigator.pushNamed(context, '/enter_name_screen');
                    });
                  } : null,
                  child: Text(
                    'CREATE ACCOUNT',
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
                      'Already a User ?',
                      style: TextStyle(
                        color: Color(0xff919191),
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Future.delayed(Duration(milliseconds: 500), () {
                          Navigator.pushReplacementNamed(
                              context, '/login_screen');
                        });
                      },
                      child: Text(
                        'Login',
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

  bool runRegisterButton() {
    if (_usernameEditingController.text.isNotEmpty &&
        _emailEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
