import 'package:elancer_project_1/shared_preferences/shared_preferences_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _usernameEditingController;
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;

  bool _showPassword = false;
  bool _visibility = true;

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
      extendBodyBehindAppBar: false,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('images/bg_blue_min.png'),
              ),
            ],
          ),
          Positioned(
            height: 300.h,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                // 'Register',
                AppLocalizations.of(context)!.registerScreen_screenMainTitle,
                style: TextStyle(
                  color: const Color(0xff373737),
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 54.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40.h),
                TextField(
                  controller: _usernameEditingController,
                  onChanged: (value) {
                    setState(
                      () {
                        _usernameEditingController;
                      },
                    );
                  },
                  showCursor: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xffE5E5E5),
                        width: 1.w,
                      ),
                    ),
                    // labelText: 'Username',
                    labelText: AppLocalizations.of(context)!
                        .registerScreen_usernameTextFieldLabel,
                    labelStyle: TextStyle(
                      color: const Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
                SizedBox(height: 13.h),
                TextField(
                  controller: _emailEditingController,
                  onChanged: (value) {
                    setState(
                      () {
                        _emailEditingController;
                      },
                    );
                  },
                  showCursor: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xffE5E5E5),
                        width: 1.w,
                      ),
                    ),
                    // labelText: 'Email',
                    labelText: AppLocalizations.of(context)!
                        .registerScreen_emailTextFieldLabel,
                    labelStyle: TextStyle(
                      color: const Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
                SizedBox(height: 13.h),
                TextField(
                  controller: _passwordEditingController,
                  onChanged: (value) {
                    setState(() {
                      _passwordEditingController;
                    });
                  },
                  obscureText: _showPassword ? false : true,
                  obscuringCharacter: '*',
                  showCursor: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      splashColor: Colors.grey.shade300,
                      onPressed: () {
                        setState(() {
                          _visibility
                              ? _visibility = false
                              : _visibility = true;
                          _showPassword
                              ? _showPassword = false
                              : _showPassword = true;
                        });
                      },
                      icon: Icon(_visibility ? Icons.visibility : Icons.visibility_off),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xffE5E5E5),
                        width: 1.w,
                      ),
                    ),
                    // labelText: 'Create Password',
                    labelText: AppLocalizations.of(context)!
                        .registerScreen_passwordTextFieldLabel,
                    labelStyle: TextStyle(
                      color: const Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                ElevatedButton(
                  onPressed: runRegisterButton()
                      ? () {
                          performRegister();
                        }
                      : null,
                  child: Text(
                    // 'CREATE ACCOUNT',
                    AppLocalizations.of(context)!
                        .registerScreen_createAccountElevatedButtonText,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50.h),
                    primary: const Color(0xfff9a42f),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      // 'Already a User ?',
                      AppLocalizations.of(context)!
                          .registerScreen_AlreadyAUserQuestion,
                      style: TextStyle(
                        color: const Color(0xff919191),
                        fontSize: 14.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Future.delayed(const Duration(milliseconds: 500), () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/login_screen',
                          );
                        });
                      },
                      child: Text(
                        // 'Login',
                        AppLocalizations.of(context)!
                            .registerScreen_LoginButton,
                        style: TextStyle(
                          color: const Color(0xff0980c6),
                          fontSize: 14.sp,
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

  void performRegister() {
    register();
  }

  void register() async {
    await SharedPreferencesController()
        .saveUserName(userName: _usernameEditingController.text);
    await SharedPreferencesController()
        .saveEmail(email: _emailEditingController.text);
    await SharedPreferencesController()
        .savePassword(password: _passwordEditingController.text);

    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        Navigator.pushNamed(context, '/enter_name_screen');
      },
    );
  }
}
