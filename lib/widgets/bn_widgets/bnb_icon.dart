import 'package:flutter/material.dart';

class BnbIcon extends StatelessWidget {
  const BnbIcon({
    Key? key,
    required this.bnbIcon,
  }) : super(key: key);

  final IconData bnbIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 28,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.transparent,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        Positioned.fill(
          child: Icon(
            bnbIcon,
            color: const Color(0xff7B7B81),
          ),
        ),
      ],
    );
  }
}
