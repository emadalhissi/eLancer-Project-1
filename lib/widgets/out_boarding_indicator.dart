import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  final double marginEnd;
  final bool selected;

  OutBoardingIndicator({
    required this.marginEnd,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected == true ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      height: 10,
      width: 30,
    );
  }
}
