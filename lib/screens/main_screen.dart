import 'package:elancer_project_1/models/bn_models/bn_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/about_elancer_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/achievements_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/courses_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/home_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/menu_screen.dart';
import 'package:elancer_project_1/widgets/bn_widgets/bnb_active_icon.dart';
import 'package:elancer_project_1/widgets/bn_widgets/bnb_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 2;



  @override
  Widget build(BuildContext context) {
    final List<BnScreen> _bnScreens = <BnScreen>[
      BnScreen(
          title: AppLocalizations.of(context)!.mainScreen_menuScreenTitle,
          widget: const MenuScreen()),
      BnScreen(
          title: AppLocalizations.of(context)!.mainScreen_aboutELancerScreenTitle,
          widget: const AboutELancerScreen()),
      BnScreen(
          title: AppLocalizations.of(context)!.mainScreen_homeScreenTitle,
          widget: const HomeScreen()),
      BnScreen(
          title: AppLocalizations.of(context)!.mainScreen_coursesScreenTitle,
          widget: const CoursesScreen()),

      BnScreen(
          title: AppLocalizations.of(context)!.mainScreen_achievementsScreenTitle,
          widget: const AchievementsScreen()),
    ];
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
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
            const Positioned(
              left: 82,
              top: 25,
              child: Image(
                image: AssetImage('images/a_c_1.png'),
                height: 90,
                width: 90,
              ),
            ),
            const Positioned(
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
        title: Text(_bnScreens[_currentIndex].title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/notifications_screen');
            },
            icon: const Icon(Icons.notifications, size: 30),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search_screen');
            },
            icon: const Icon(Icons.search, size: 30),
          ),
        ),
      ),
      body: _bnScreens[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(
            () {
              _currentIndex = value;
            },
          );
        },
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        // unselectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        elevation: 50,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: BnbIcon(bnbIcon: Icons.menu),
            label: '',
            activeIcon: BnbActiveIcon(bnbActiveIcon: Icons.menu),
          ),
          BottomNavigationBarItem(
            icon: BnbIcon(bnbIcon: Icons.info),
            label: '',
            activeIcon:
                BnbActiveIcon(bnbActiveIcon: Icons.info_outline_rounded),
          ),
          BottomNavigationBarItem(
            icon: BnbIcon(bnbIcon: Icons.home),
            label: '',
            activeIcon: BnbActiveIcon(bnbActiveIcon: Icons.home),
          ),
          BottomNavigationBarItem(
            icon: BnbIcon(bnbIcon: Icons.favorite),
            label: '',
            activeIcon: BnbActiveIcon(bnbActiveIcon: Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: BnbIcon(bnbIcon: Icons.volunteer_activism),
            label: '',
            activeIcon:
                BnbActiveIcon(bnbActiveIcon: Icons.volunteer_activism_outlined),
          ),
        ],
      ),
    );
  }
}
