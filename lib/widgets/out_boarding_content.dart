import 'package:flutter/material.dart';

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
        Image(image: AssetImage('images/$imageName')),
      ],
    );
  }
}