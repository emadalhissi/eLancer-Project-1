import 'package:elancer_project_1/models/bn_models/bn_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/about_elancer_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/achievements_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/courses_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/home_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/menu_screen.dart';
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
    BnScreen(title: 'Home', widget: const HomeScreen()),
    BnScreen(title: 'Menu', widget: const MenuScreen()),
    BnScreen(title: 'Courses', widget: const CoursesScreen()),
    BnScreen(title: 'Achievements', widget: const AchievementsScreen()),
    BnScreen(title: 'About eLancer', widget: const AboutELancerScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xff970810),
                    Color(0xffBB0D16),
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
        title: Text('Home'),
        // title: const Image(
        //   image: AssetImage('images/appbar_logo.png'),
        //   width: 69,
        //   height: 24,
        // ),
        centerTitle: true,
        // backgroundColor: const Color(0xffBB0D16),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call, size: 20),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_sharp, size: 20),
          ),
          const SizedBox(width: 5)
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, size: 30),
        ),
      ),
      body: _bnScreens[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
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
            icon: BnbIcon(bnbIcon: Icons.shopping_cart_rounded),
            label: '',
            activeIcon:
            BnbActiveIcon(bnbActiveIcon: Icons.shopping_cart_rounded),
          ),
          BottomNavigationBarItem(
            icon: BnbIcon(bnbIcon: Icons.widgets_rounded),
            label: '',
            activeIcon: BnbActiveIcon(bnbActiveIcon: Icons.widgets_rounded),
          ),
          BottomNavigationBarItem(
            icon: BnbIcon(bnbIcon: Icons.home),
            label: '',
            activeIcon:
            BnbActiveIcon(bnbActiveIcon: Icons.home),
          ),
          BottomNavigationBarItem(
            icon: BnbIcon(bnbIcon: Icons.favorite),
            label: '',
            activeIcon:
            BnbActiveIcon(bnbActiveIcon: Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: BnbIcon(bnbIcon: Icons.menu),
            label: '',
            activeIcon:
            BnbActiveIcon(bnbActiveIcon: Icons.menu),
          ),
        ],
      ),
    );
  }
}
