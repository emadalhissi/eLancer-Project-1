import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState
    extends State<LaunchScreen> /*with TickerProviderStateMixin*/ {
  // final Widget svgImage = SvgPicture.asset('images/svg');

  // late AnimationController controller;
  // late Animation<double> animation;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/out_boarding_screen');
    });
    super.initState();
    // controller = AnimationController(
    //   duration: const Duration(milliseconds: 500),
    //   vsync: this,
    // );
    // animation = CurvedAnimation(
    //   parent: controller,
    //   curve: Curves.fastOutSlowIn,
    // );
    //
    // controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          // child: FadeTransition(
          //   opacity: animation,
          child: Container(
            // child: SvgPicture.asset('images/elancer_logo.svg'),
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/elancer_logo_min.png'),
              ),
            ),
          ),
          // ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffd8edf7),
              Color(0xffe0f2fc),
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
        ),
      ),
    );
  }
}
