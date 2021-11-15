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
          // Align(
          //   alignment: AlignmentDirectional.topEnd,
          //   child: Visibility(
          //     visible: _currentPage < 2,
          //     replacement: TextButton(
          //       onPressed: () =>
          //           Navigator.pushReplacementNamed(context, '/login_screen'),
          //       child: Text('START'),
          //     ),
          //     child: Align(
          //       alignment: AlignmentDirectional.topEnd,
          //       child: TextButton(
          //         onPressed: () => _pageController.animateToPage(
          //           2,
          //           duration: const Duration(seconds: 1),
          //           curve: Curves.easeInOut,
          //         ),
          //         child: Text('SKIP'),
          //       ),
          //     ),
          //   ),
          // ),
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
                OutBoardingContent(imageName: 'ob_1.png'),
                OutBoardingContent(imageName: 'ob_2.png'),
                OutBoardingContent(imageName: 'ob_3.png'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // OutBoardingIndicator(
              //   marginEnd: 5,
              //   selected: _currentPage == 0,
              // ),
              // OutBoardingIndicator(
              //   marginEnd: 5,
              //   selected: _currentPage == 1,
              // ),
              // OutBoardingIndicator(
              //   marginEnd: 5,
              //   selected: _currentPage == 2,
              // ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Visibility(
                visible: _currentPage > 0,
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                child: IconButton(
                  //color: _currentPage == 0 ? Colors.grey : Colors.black,
                  onPressed: () {
                    _pageController.previousPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              Visibility(
                visible: _currentPage < 2,
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                child: IconButton(
                  //color: _currentPage == 2 ? Colors.grey : Colors.black,
                  onPressed: () {
                    _pageController.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut);
                  },
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Visibility(
            visible: _currentPage == 2,
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/login_screen'),
                child: Text('START'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
