import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            children: const [
              Image(
                image: AssetImage('images/bg.png'),
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
                  showCursor: false,
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
                  showCursor: false,
                  decoration: InputDecoration(
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
                  onPressed: runLoginButton() ? () {} : null,
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
                    primary: const Color(0xff42C6A5),
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
                          color: const Color(0xff40C4A3),
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

  bool runLoginButton() {
    if (_usernameOrEmailEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
