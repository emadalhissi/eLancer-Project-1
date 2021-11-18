import 'package:elancer_project_1/models/bn_models/bn_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/about_elancer_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/achievements_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/courses_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/home_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/menu_screen.dart';
import 'package:elancer_project_1/widgets/app_bar.dart';
import 'package:elancer_project_1/widgets/bn_widgets/bnb_active_icon.dart';
import 'package:elancer_project_1/widgets/bn_widgets/bnb_icon.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<BnScreen> _bnScreens = <BnScreen>[
    BnScreen(widget: const MenuScreen(), appBar: buildAppBar(title: 'Menu')),
    BnScreen(
      widget: const AboutELancerScreen(),
      appBar: buildAppBar(
        title: 'About eLancer',
        hasSecondActionsIcon: true,
        secondActionsIconButton: Icons.notifications_none_sharp,
      ),
    ),
    BnScreen(
      widget: const HomeScreen(),
      appBar: buildAppBar(
        title: 'Home',
        hasFirstActionsIcon: true,
        firstActionsIconButton: Icons.phone,
        hasSecondActionsIcon: true,
        secondActionsIconButton: Icons.notifications_none_sharp,
        hasLeadingActionsIcon: true,
        leadingIconButton: Icons.search,
      ),
    ),
    BnScreen(
        widget: const CoursesScreen(), appBar: buildAppBar(title: 'Courses')),
    BnScreen(
        widget: const AchievementsScreen(),
        appBar: buildAppBar(title: 'Achievements')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: _bnScreens[_currentIndex].appBar,
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
        items: [
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
