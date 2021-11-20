import 'package:elancer_project_1/shared_preferences/shared_preferences_controller.dart';
import 'package:elancer_project_1/widgets/menu_screen_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                title: AppLocalizations.of(context)!.menuScreen_myProfileTitle,
                icon: Icons.account_circle,
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
                title: AppLocalizations.of(context)!.menuScreen_workStaffTitle,
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
                title: AppLocalizations.of(context)!.menuScreen_founderTitle,
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
                title: AppLocalizations.of(context)!.menuScreen_eLancerNewsTitle,
                icon: Icons.watch_later_sharp,
                circleAvatarBGColor: Color(0xff039fe1),
                onTab: () {
                  Navigator.pushNamed(
                    context,
                    '/news_screen',
                  );
                },
              ),
              MenuScreenListTile(
                title: AppLocalizations.of(context)!.menuScreen_settingsTitle,
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
                title: AppLocalizations.of(context)!.menuScreen_aboutDeveloperTitle,
                icon: Icons.announcement,
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
                    logout();
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
                  AppLocalizations.of(context)!.menuScreen_logoutTitle,
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

  void logout() async {
    await SharedPreferencesController().logout();
  }
}
