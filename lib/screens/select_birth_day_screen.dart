import 'package:elancer_project_1/widgets/select_birth_day_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectBirthDayScreen extends StatefulWidget {
  const SelectBirthDayScreen({Key? key}) : super(key: key);

  @override
  _SelectBirthDayScreenState createState() => _SelectBirthDayScreenState();
}

class _SelectBirthDayScreenState extends State<SelectBirthDayScreen> {
  late TextEditingController _firstNumberOfDayEditingController;
  late TextEditingController _secondNumberOfDayEditingController;
  late TextEditingController _firstNumberOfMonthEditingController;
  late TextEditingController _secondNumberOfMonthEditingController;
  late TextEditingController _firstNumberOfYearEditingController;
  late TextEditingController _secondNumberOfYearEditingController;
  late TextEditingController _thirdNumberOfYearEditingController;
  late TextEditingController _fourthNumberOfYearEditingController;

  late FocusNode _firstNumberOfDayFocusNode;
  late FocusNode _secondNumberOfDayFocusNode;
  late FocusNode _firstNumberOfMonthFocusNode;
  late FocusNode _secondNumberOfMonthFocusNode;
  late FocusNode _firstNumberOfYearFocusNode;
  late FocusNode _secondNumberOfYearFocusNode;
  late FocusNode _thirdNumberOfYearFocusNode;
  late FocusNode _fourthNumberOfYearFocusNode;

  // bool enabled = false;

  @override
  void initState() {
    super.initState();
    _firstNumberOfDayEditingController = TextEditingController();
    _secondNumberOfDayEditingController = TextEditingController();
    _firstNumberOfMonthEditingController = TextEditingController();
    _secondNumberOfMonthEditingController = TextEditingController();
    _firstNumberOfYearEditingController = TextEditingController();
    _secondNumberOfYearEditingController = TextEditingController();
    _thirdNumberOfYearEditingController = TextEditingController();
    _fourthNumberOfYearEditingController = TextEditingController();

    _firstNumberOfDayFocusNode = FocusNode();
    _secondNumberOfDayFocusNode = FocusNode();
    _firstNumberOfMonthFocusNode = FocusNode();
    _secondNumberOfMonthFocusNode = FocusNode();
    _firstNumberOfYearFocusNode = FocusNode();
    _secondNumberOfYearFocusNode = FocusNode();
    _thirdNumberOfYearFocusNode = FocusNode();
    _fourthNumberOfYearFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _firstNumberOfDayEditingController.dispose();
    _secondNumberOfDayEditingController.dispose();
    _firstNumberOfMonthEditingController.dispose();
    _secondNumberOfMonthEditingController.dispose();
    _firstNumberOfYearEditingController.dispose();
    _secondNumberOfYearEditingController.dispose();
    _thirdNumberOfYearEditingController.dispose();
    _fourthNumberOfYearEditingController.dispose();

    _firstNumberOfDayFocusNode.dispose();
    _secondNumberOfDayFocusNode.dispose();
    _firstNumberOfMonthFocusNode.dispose();
    _secondNumberOfMonthFocusNode.dispose();
    _firstNumberOfYearFocusNode.dispose();
    _secondNumberOfYearFocusNode.dispose();
    _thirdNumberOfYearFocusNode.dispose();
    _fourthNumberOfYearFocusNode.dispose();
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
            height: 400.h,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                // 'Enter Your Age',
                AppLocalizations.of(context)!
                    .selectBirthDayScreen_screenMainTitle,
                style: TextStyle(
                  color: const Color(0xff373737),
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 50.h, horizontal: 60.w),
                  child: Row(
                    children: [
                      //---------------------------DAY---------------------------
                      Expanded(
                        // width: 20,
                        child: SelectBirthDayTextField(
                          textEditingController:
                              _firstNumberOfDayEditingController,
                          focusNode: _firstNumberOfDayFocusNode,
                          hint: 'D',
                          onChanged: (value) {
                            setState(
                              () {
                                _firstNumberOfDayEditingController;
                              },
                            );
                            if (value.isNotEmpty) {
                              // enabled = true;
                              _secondNumberOfDayFocusNode.requestFocus();
                            }
                            if (value.isEmpty) {
                              // enabled = false;
                            }
                          },
                          formatter: '0-3',
                          enabled: true,
                        ),
                      ),
                      // SizedBox(width: 10),
                      Expanded(
                        // width: 20,
                        child: SelectBirthDayTextField(
                          textEditingController:
                              _secondNumberOfDayEditingController,
                          focusNode: _secondNumberOfDayFocusNode,
                          hint: 'D',
                          enabled: true,
                          onChanged: (value) {
                            setState(
                              () {
                                _secondNumberOfDayEditingController;
                              },
                            );
                            if (value.isNotEmpty) {
                              _firstNumberOfMonthFocusNode.requestFocus();
                            } else {
                              _firstNumberOfDayFocusNode.requestFocus();
                            }
                            setDays();
                          },
                          // formatter: '0-9',
                          formatter: checkFirstNumberOfDay(),
                        ),
                      ),
                      // SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          '/',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //---------------------------MONTH---------------------------
                      Expanded(
                        // width: 20,
                        child: SelectBirthDayTextField(
                          textEditingController:
                              _firstNumberOfMonthEditingController,
                          focusNode: _firstNumberOfMonthFocusNode,
                          hint: 'M',
                          onChanged: (value) {
                            setState(
                              () {
                                _firstNumberOfMonthEditingController;
                              },
                            );
                            if (value.isNotEmpty) {
                              _secondNumberOfMonthFocusNode.requestFocus();
                            } else {
                              _secondNumberOfDayFocusNode.requestFocus();
                            }
                          },
                          formatter: '0-1',
                          enabled: true,
                        ),
                      ),
                      // SizedBox(width: 10),
                      Expanded(
                        // width: 20,
                        child: SelectBirthDayTextField(
                          textEditingController:
                              _secondNumberOfMonthEditingController,
                          focusNode: _secondNumberOfMonthFocusNode,
                          hint: 'M',
                          onChanged: (value) {
                            setState(
                              () {
                                _secondNumberOfMonthEditingController;
                              },
                            );
                            if (value.isNotEmpty) {
                              _firstNumberOfYearFocusNode.requestFocus();
                            } else {
                              _firstNumberOfMonthFocusNode.requestFocus();
                            }
                            setMonth();
                          },
                          formatter: checkerForTheSecondNumberOfMonth(),
                          enabled: true,
                        ),
                      ),
                      // SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          ' / ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //---------------------------YEAR---------------------------
                      Expanded(
                        // width: 20,
                        child: SelectBirthDayTextField(
                          textEditingController:
                              _firstNumberOfYearEditingController,
                          focusNode: _firstNumberOfYearFocusNode,
                          hint: 'Y',
                          onChanged: (value) {
                            setState(
                              () {
                                _firstNumberOfYearEditingController;
                              },
                            );
                            if (value.isNotEmpty) {
                              _secondNumberOfYearFocusNode.requestFocus();
                            } else {
                              _secondNumberOfMonthFocusNode.requestFocus();
                            }
                          },
                          formatter: '1-2',
                          enabled: true,
                        ),
                      ),
                      // SizedBox(width: 10),
                      Expanded(
                        // width: 20,
                        child: SelectBirthDayTextField(
                          textEditingController:
                              _secondNumberOfYearEditingController,
                          focusNode: _secondNumberOfYearFocusNode,
                          hint: 'Y',
                          onChanged: (value) {
                            setState(
                              () {
                                _secondNumberOfYearEditingController;
                              },
                            );
                            if (value.isNotEmpty) {
                              _thirdNumberOfYearFocusNode.requestFocus();
                            } else {
                              _firstNumberOfYearFocusNode.requestFocus();
                            }
                          },
                          formatter: checkFirstNumberOfYear(),
                          enabled: true,
                        ),
                      ),
                      // SizedBox(width: 10),
                      Expanded(
                        // width: 20,
                        child: SelectBirthDayTextField(
                          textEditingController:
                              _thirdNumberOfYearEditingController,
                          focusNode: _thirdNumberOfYearFocusNode,
                          hint: 'Y',
                          onChanged: (value) {
                            setState(
                              () {
                                _thirdNumberOfYearEditingController;
                              },
                            );
                            if (value.isNotEmpty) {
                              _fourthNumberOfYearFocusNode.requestFocus();
                            } else {
                              _secondNumberOfYearFocusNode.requestFocus();
                            }
                          },
                          formatter: checkSecondNumberOfYear(),
                          enabled: true,
                        ),
                      ),
                      // SizedBox(width: 10),
                      Expanded(
                        // width: 20,
                        child: SelectBirthDayTextField(
                          textEditingController:
                              _fourthNumberOfYearEditingController,
                          focusNode: _fourthNumberOfYearFocusNode,
                          hint: 'Y',
                          onChanged: (value) {
                            setState(
                              () {
                                _fourthNumberOfYearEditingController;
                              },
                            );
                            if (value.isEmpty) {
                              _thirdNumberOfYearFocusNode.requestFocus();
                            }
                            setYear();
                          },
                          formatter: checkThirdNumberOfYear(),
                          enabled: true,
                        ),
                      ),
                      // SizedBox(width: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50.r),
                      gradient: LinearGradient(
                        // begin: Alignment.topLeft,
                        // end: Alignment.bottomRight,
                        begin: const Alignment(-1.0, -4.0),
                        end: const Alignment(1.0, 4.0),
                        stops: const [
                          0.20,
                          0.25,
                          0.375,
                          0.5,
                          0.55,
                          0.6,
                          0.65,
                          1.0
                        ],
                        colors: [
                          // _firstNumberOfDayEditingController.text.isEmpty
                          //     ? Colors.grey.shade400
                          //     : Color(0xff0047ab),
                          // _secondNumberOfDayEditingController.text.isEmpty
                          //     ? Colors.grey.shade400
                          //     : Color(0xff007FFF),
                          // _firstNumberOfMonthEditingController.text.isEmpty
                          //     ? Colors.grey.shade400
                          //     : Color(0xff00bfff),
                          // _secondNumberOfMonthEditingController.text.isEmpty
                          //     ? Colors.grey.shade400
                          //     : Color(0xff0073cf),
                          // _firstNumberOfYearEditingController.text.isEmpty
                          //     ? Colors.grey.shade400
                          //     : Color(0xff0047ab),
                          // _secondNumberOfYearEditingController.text.isEmpty
                          //     ? Colors.grey.shade400
                          //     : Color(0xff007FFF),
                          // _thirdNumberOfYearEditingController.text.isEmpty
                          //     ? Colors.grey.shade400
                          //     : Color(0xff00bfff),
                          // _fourthNumberOfYearEditingController.text.isEmpty
                          //     ? Colors.grey.shade400
                          //     : Color(0xff0047ab),
                          _firstNumberOfDayEditingController.text.isEmpty
                              ? Colors.grey.shade400
                              : const Color(0xff00bfff),
                          _secondNumberOfDayEditingController.text.isEmpty
                              ? Colors.grey.shade400
                              : const Color(0xff00bfff),
                          _firstNumberOfMonthEditingController.text.isEmpty
                              ? Colors.grey.shade400
                              : const Color(0xff00bfff),
                          _secondNumberOfMonthEditingController.text.isEmpty
                              ? Colors.grey.shade400
                              : const Color(0xff00bfff),
                          _firstNumberOfYearEditingController.text.isEmpty
                              ? Colors.grey.shade400
                              : const Color(0xff00bfff),
                          _secondNumberOfYearEditingController.text.isEmpty
                              ? Colors.grey.shade400
                              : const Color(0xff00bfff),
                          _thirdNumberOfYearEditingController.text.isEmpty
                              ? Colors.grey.shade400
                              : const Color(0xff00bfff),
                          _fourthNumberOfYearEditingController.text.isEmpty
                              ? Colors.grey.shade400
                              : const Color(0xff00bfff),
                        ],
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: runButton()
                          ? () {
                              Future.delayed(
                                const Duration(milliseconds: 500),
                                () {
                                  Navigator.pushReplacementNamed(
                                      context, '/main_screen');
                                },
                              );
                            }
                          : null,
                      child: Text(
                        // 'CONTINUE',
                        AppLocalizations.of(context)!
                            .selectBirthDayScreen_continueElevatedButtonText,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        minimumSize: Size(double.infinity, 50.h),
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70.h),
                // SizedBox(height: 70),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool runButton() {
    if (_firstNumberOfDayEditingController.text.isNotEmpty &&
        _secondNumberOfDayEditingController.text.isNotEmpty &&
        _firstNumberOfMonthEditingController.text.isNotEmpty &&
        _secondNumberOfMonthEditingController.text.isNotEmpty &&
        _firstNumberOfYearEditingController.text.isNotEmpty &&
        _secondNumberOfYearEditingController.text.isNotEmpty &&
        _thirdNumberOfYearEditingController.text.isNotEmpty &&
        _fourthNumberOfYearEditingController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  String setDays() {
    String days = _firstNumberOfDayEditingController.text +
        _secondNumberOfDayEditingController.text;
    return days;
  }

  String setMonth() {
    String month = _firstNumberOfMonthEditingController.text +
        _secondNumberOfMonthEditingController.text;
    return month;
  }

  String setYear() {
    String year = _firstNumberOfYearEditingController.text +
        _secondNumberOfYearEditingController.text +
        _thirdNumberOfYearEditingController.text +
        _fourthNumberOfYearEditingController.text;
    return year;
  }

  String checkerForTheSecondNumberOfMonth() {
    if (setDays() == '31' &&
        _firstNumberOfMonthEditingController.text.contains('0')) {
      return '1 3 5 7 8';
    } else if (setDays() == '31' &&
        _firstNumberOfMonthEditingController.text.contains('1')) {
      return '0 2';
    } else {
      return checkFirstNumberOfMonth();
    }
  }

  String checkFirstNumberOfDay() {
    if (_firstNumberOfDayEditingController.text.contains('0')) {
      return '1-9';
    } else if (_firstNumberOfDayEditingController.text.contains('1')) {
      return '0-9';
    } else if (_firstNumberOfDayEditingController.text.contains('2')) {
      return '0-9';
    } else if (_firstNumberOfDayEditingController.text.contains('3')) {
      return '0-1';
    } else {
      return '';
    }
  }

  String checkFirstNumberOfMonth() {
    if (_firstNumberOfMonthEditingController.text.contains('0')) {
      return '1-9';
    } else if (_firstNumberOfMonthEditingController.text.contains('1')) {
      return '0-2';
    } else {
      return '';
    }
  }

  String checkFirstNumberOfYear() {
    if (_firstNumberOfYearEditingController.text.contains('1')) {
      return '9';
    } else if (_firstNumberOfYearEditingController.text.contains('2')) {
      return '0';
    } else {
      return '';
    }
  }

  String checkSecondNumberOfYear() {
    if (_secondNumberOfYearEditingController.text.contains('0')) {
      return '0';
    } else if (_secondNumberOfYearEditingController.text.contains('9')) {
      return '5-9';
    } else {
      return '';
    }
  }

  String checkThirdNumberOfYear() {
    if (_thirdNumberOfYearEditingController.text.contains('0')) {
      return '0-5';
    } else {
      return '0-9';
    }
  }
}
