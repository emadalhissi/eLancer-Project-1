import 'package:elancer_project_1/main.dart';
import 'package:elancer_project_1/widgets/out%20boarding%20widgets/out_boarding_content.dart';
import 'package:elancer_project_1/widgets/out%20boarding%20widgets/out_boarding_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 0,
              maxWidth: 422.w,
              minHeight: 0,
              maxHeight: 540.h,
            ),
            child: PageView(
              // scrollBehavior: ScrollPhysics().,
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                setState(
                  () {
                    _currentPage = value;
                  },
                );
              },
              children: [
                OutBoardingContent(
                  imageName: 'ob_1.png',
                  title: AppLocalizations.of(context)!.outBoardingScreen_page_1_title,
                  subTitle: AppLocalizations.of(context)!.outBoardingScreen_page_1_subTitle,
                ),
                OutBoardingContent(
                  imageName: 'ob_3.png',
                  title: AppLocalizations.of(context)!.outBoardingScreen_page_2_title,
                  subTitle: AppLocalizations.of(context)!.outBoardingScreen_page_2_subTitle,
                ),
                OutBoardingContent(
                  imageName: 'ob_2.png',
                  title: AppLocalizations.of(context)!.outBoardingScreen_page_3_title,
                  subTitle: AppLocalizations.of(context)!.outBoardingScreen_page_3_subTitle,
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 39.w, right: 39.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutBoardingIndicator(
                      marginEnd: 9.w,
                      selected: _currentPage == 0,
                    ),
                    OutBoardingIndicator(
                      marginEnd: 9.w,
                      selected: _currentPage == 1,
                    ),
                    OutBoardingIndicator(
                      marginEnd: 9.w,
                      selected: _currentPage == 2,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: _currentPage == 2
                    ? () {
                        Navigator.pushReplacementNamed(
                            context, '/login_screen');
                      }
                    : () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                child: Text(
                  _currentPage == 2 ? AppLocalizations.of(context)!.outBoardingScreen_startButton : AppLocalizations.of(context)!.outBoardingScreen_nextButton,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xfff9a42f),
                  minimumSize: Size(99.w, 48.h),
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(50.r),
                      topStart: Radius.circular(50.r),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
