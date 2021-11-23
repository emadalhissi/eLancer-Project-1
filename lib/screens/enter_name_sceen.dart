import 'package:elancer_project_1/shared_preferences/shared_preferences_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            children: const [
              Image(
                image: AssetImage('images/bg_blue_min.png'),
              ),
            ],
          ),
          Positioned(
            height: 500.h,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                // 'Enter Full Name',
                AppLocalizations.of(context)!.enterNameScreen_screenMainTitle,
                style: TextStyle(
                  color: const Color(0xff373737),
                  fontSize: 28.sp,
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
                SizedBox(height: 60.h),
                TextField(
                  controller: _fullNameEditingController,
                  onChanged: (value) {
                    setState(
                      () {
                        _fullNameEditingController;
                      },
                    );
                  },
                  showCursor: true,
                  decoration: InputDecoration(
                    // hintText: 'Full Name...',
                    hintText: AppLocalizations.of(context)!
                        .enterNameScreen_fullNameTextFieldHint,
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xffE5E5E5),
                        width: 1.w,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: const Color(0xffA1A1A1),
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                ElevatedButton(
                  onPressed: runFullNameNextButton()
                      ? () {
                          performFullName();
                        }
                      : null,
                  child: Text(
                    // 'NEXT',
                    AppLocalizations.of(context)!
                        .enterNameScreen_nextElevatedButtonText,
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

  void performFullName() {
    if (runFullNameNextButton()) {
      goNext();
    }
  }

  void goNext() async {
    await SharedPreferencesController()
        .saveFullName(fullName: _fullNameEditingController.text);
    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        Navigator.pushNamed(context, '/select_age_screen');
      },
    );
  }
}
