import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutBoardingIndicator extends StatelessWidget {
  final double marginEnd;
  final bool selected;

  const OutBoardingIndicator({
    Key? key,
    required this.marginEnd,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? const Color(0xff33354E) : const Color(0xffD2CBCB),
        borderRadius: BorderRadius.circular(10.r),
      ),
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      height: 8.w,
      width: selected ? 33.w : 8.w,
    );
  }
}
