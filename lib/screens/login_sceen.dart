import 'package:elancer_project_1/helpers/helpers.dart';
import 'package:elancer_project_1/shared_preferences/shared_preferences_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _usernameOrEmailEditingController;
  late TextEditingController _passwordEditingController;

  bool _showPassword = false;
  bool _visibility = true;

  @override
  void initState() {
    super.initState();
    _usernameOrEmailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    // _showPassword;
    // _visibility;
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
                // 'Login',
                AppLocalizations.of(context)!.loginScreen_screenMainTitle,
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
                  controller: _usernameOrEmailEditingController,
                  onChanged: (value) {
                    setState(() {
                      _usernameOrEmailEditingController;
                    });
                  },
                  showCursor: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xffE5E5E5),
                        width: 1.w,
                      ),
                    ),
                    // labelText: 'Username or Email',
                    labelText: AppLocalizations.of(context)!
                        .loginScreen_UsernameOrEmailTextFieldLabel,
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
                  showCursor: true,
                  obscureText: _showPassword ? false : true,
                  obscuringCharacter: '*',
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
                    // labelText: 'Enter Password',
                    labelText: AppLocalizations.of(context)!
                        .loginScreen_passwordTextFieldLabel,
                    labelStyle: TextStyle(
                      color: const Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                ElevatedButton(
                  onPressed: runLoginButton()
                      ? () {
                          performLogin();
                        }
                      : null,
                  child: Text(
                    // 'LOGIN',
                    AppLocalizations.of(context)!
                        .loginScreen_loginElevatedButtonText,
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
                      // 'New User ?',
                      AppLocalizations.of(context)!.loginScreen_newUserQuestion,
                      style: TextStyle(
                        color: const Color(0xff919191),
                        fontSize: 14.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Future.delayed(
                          const Duration(milliseconds: 500),
                          () {
                            Navigator.pushReplacementNamed(
                              context,
                              '/register_screen',
                            );
                          },
                        );
                      },
                      child: Text(
                        // 'Sign Up Now',
                        AppLocalizations.of(context)!
                            .loginScreen_signUpNowButton,
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

  void performLogin() {
    if (checkUserInfo()) {
      login();
    }
  }

  bool runLoginButton() {
    if (_usernameOrEmailEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool checkUserInfo() {
    if ((_usernameOrEmailEditingController.text ==
                SharedPreferencesController().getUserName ||
            _usernameOrEmailEditingController.text ==
                SharedPreferencesController().getEmail) &&
        _passwordEditingController.text ==
            SharedPreferencesController().getPassword) {
      return true;
    } else {
      showSnackBar(
        context: context,
        message: AppLocalizations.of(context)!.general_snackBarCheckEnteredData,
        error: true,
      );
      return false;
    }
  }

  void login() {
    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        Navigator.pushReplacementNamed(
          context,
          '/main_screen',
        );
      },
    );
  }
}
