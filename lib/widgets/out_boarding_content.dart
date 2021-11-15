import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutBoardingContent extends StatelessWidget {
  const OutBoardingContent({
    Key? key,
    required this.imageName,
  }) : super(key: key);

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 80.h,
          child: Container(
            padding: EdgeInsets.only(left: 37.w, right: 37.w),
            child: Text(
              'New Courses',
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 175.h,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            width: 300.w,
            height: 320.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/$imageName'), fit: BoxFit.contain),
            ),
          ),
        ),
      ],
    );
  }
}
