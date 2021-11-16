import 'package:elancer_project_1/main.dart';
import 'package:elancer_project_1/widgets/out_boarding_content.dart';
import 'package:elancer_project_1/widgets/out_boarding_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              children: const [
                OutBoardingContent(
                  imageName: 'ob_1.png',
                  title: 'New Courses',
                  subTitle: 'Discover All eLancer New Courses',
                ),
                OutBoardingContent(
                  imageName: 'ob_3.png',
                  title: 'Latest News',
                  subTitle: 'Find Out eLancer Latest News',
                ),
                OutBoardingContent(
                  imageName: 'ob_2.png',
                  title: 'Discover More',
                  subTitle: 'Achievements, Staff & Much More!',
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
                  _currentPage == 2 ? ' START' : '  NEXT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff42C6A5),
                  minimumSize: Size(99.w, 48.h),
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.r),
                      topLeft: Radius.circular(50.r),
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
