import 'package:elancer_project_1/widgets/menu_screen_list_tile.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MenuScreenListTile(
                title: 'About Developer',
                icon: Icons.person,
                circleAvatarBGColor: Color(0xff039fe1),
                onTab: () {
                  Navigator.pushNamed(
                    context,
                    '/about_developer_screen',
                  );
                },
              ),
            ]
          ),
        ),
      ),
    );
  }
}
