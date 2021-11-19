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
                title: 'My Profile',
                icon: Icons.person,
                circleAvatarBGColor: Color(0xff039fe1),
                onTab: () {
                  Navigator.pushNamed(
                    context,
                    '/my_profile_screen',
                  );
                },
              ),
              Divider(
                color: Colors.grey.shade800,
                thickness: 0.5,
                indent: 20,
                endIndent: 20,
                height: 20,
              ),
              MenuScreenListTile(
                title: 'Work Staff',
                icon: Icons.work,
                circleAvatarBGColor: Color(0xff039fe1),
                onTab: () {
                  Navigator.pushNamed(
                    context,
                    '/work_staff_screen',
                  );
                },
              ),
              MenuScreenListTile(
                title: 'Founder',
                icon: Icons.monetization_on_sharp,
                circleAvatarBGColor: Color(0xff039fe1),
                onTab: () {
                  Navigator.pushNamed(
                    context,
                    '/founder_screen',
                  );
                },
              ),
              Divider(
                color: Colors.grey.shade800,
                thickness: 0.5,
                indent: 20,
                endIndent: 20,
                height: 20,
              ),
              MenuScreenListTile(
                title: 'eLancer News',
                icon: Icons.update,
                circleAvatarBGColor: Color(0xff039fe1),
                onTab: () {
                  Navigator.pushNamed(
                    context,
                    '/news_screen',
                  );
                },
              ),
              MenuScreenListTile(
                title: 'Settings',
                icon: Icons.settings,
                circleAvatarBGColor: Color(0xff039fe1),
                onTab: () {
                  Navigator.pushNamed(
                    context,
                    '/settings_screen',
                  );
                },
              ),
              Divider(
                color: Colors.grey.shade800,
                thickness: 0.5,
                indent: 20,
                endIndent: 20,
                height: 20,
              ),
              MenuScreenListTile(
                title: 'About Developer',
                icon: Icons.person,
                circleAvatarBGColor: Colors.green.shade400,
                onTab: () {
                  Navigator.pushNamed(
                    context,
                    '/about_developer_screen',
                  );
                },
              ),
              Divider(
                color: Colors.grey.shade800,
                thickness: 0.5,
                indent: 20,
                endIndent: 20,
                height: 20,
              ),
              ListTile(
                onTap: (){
                  Future.delayed(Duration(seconds: 1), (){
                    Navigator.pushNamed(context, '/login_screen');
                  });
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.red.shade400,
                  child: Icon(Icons.logout_outlined, color: Colors.white, size: 25,),
                  radius: 25,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 5),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Color(0xff7B7B81),
                    letterSpacing: 1,
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
