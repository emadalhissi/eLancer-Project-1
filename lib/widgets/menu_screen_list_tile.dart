import 'package:flutter/material.dart';


class MenuScreenListTile extends StatelessWidget {
  const MenuScreenListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.circleAvatarBGColor,
    required this.onTab,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Color circleAvatarBGColor;
  final void Function() onTab;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTab,
      leading: CircleAvatar(
        backgroundColor: circleAvatarBGColor,
        child: Icon(icon, color: Colors.white, size: 25,),
        radius: 25,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 5),
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xff7B7B81),
          letterSpacing: 1,
        ),
      ),
    );
  }
}
