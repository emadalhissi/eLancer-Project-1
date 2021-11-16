import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutBoardingContent extends StatelessWidget {
  const OutBoardingContent({
    Key? key,
    required this.imageName,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String imageName;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 80.h,
          child: Container(
            padding: EdgeInsets.only(left: 37.w, right: 37.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff373737),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: const Color(0xff373737),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 175.h,
          child: Container(
            margin: EdgeInsets.only(left: 20.w, right: 40.w),
            width: 300.w,
            height: 320.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/$imageName'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
