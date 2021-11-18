import 'package:flutter/material.dart';

class BnbActiveIcon extends StatelessWidget {
  const BnbActiveIcon({
    Key? key,
    required this.bnbActiveIcon,
  }) : super(key: key);

  final IconData bnbActiveIcon;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          backgroundColor: Color(0xfff9b31e),
          radius: 28,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xfffcba2c),
          ),
        ),
        Positioned.fill(
          child: Icon(bnbActiveIcon, color: Colors.white, size: 30,),
        ),
      ],
    );
  }
}