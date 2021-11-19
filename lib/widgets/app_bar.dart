import 'package:flutter/material.dart';

AppBar buildAppBar({
  required String title,
  bool centerTitle = true,
  IconData? firstActionsIconButton,
  bool hasFirstActionsIcon = false,
  IconData? secondActionsIconButton,
  bool hasSecondActionsIcon = false,
  IconData? leadingIconButton,
  bool hasLeadingActionsIcon = false,

}) {
  return AppBar(
    flexibleSpace: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xff049bde),
                Color(0xff00afef),
              ],
            ),
          ),
        ),
        Positioned(
          left: 82,
          top: 25,
          child: Image(
            image: AssetImage('images/a_c_1.png'),
            height: 90,
            width: 90,
          ),
        ),
        Positioned(
          left: 140,
          top: -8,
          child: Image(
            image: AssetImage('images/a_c_2.png'),
            height: 90,
            width: 90,
          ),
        ),
      ],
    ),
    title: Text(title),
    // title: const Image(
    //   image: AssetImage('images/appbar_logo.png'),
    //   width: 69,
    //   height: 24,
    // ),
    centerTitle: centerTitle,
    // backgroundColor: const Color(0xffBB0D16),
    actions: [
      IconButton(
        onPressed: hasFirstActionsIcon ? (){} : null,
        icon: Icon(firstActionsIconButton, size: 20),
      ),
      IconButton(
        onPressed: hasSecondActionsIcon ? (){} : null,
        icon: Icon(secondActionsIconButton, size: 20),
      ),
      const SizedBox(width: 5)
    ],
    leading: IconButton(
      onPressed: hasLeadingActionsIcon ? (){} : null,
      icon: Icon(leadingIconButton, size: 30),
    ),
  );
}
