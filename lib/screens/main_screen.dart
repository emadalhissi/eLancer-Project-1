import 'package:elancer_project_1/models/bn_screen.dart';
import 'package:flutter/material.dart';
// import 'package:ui_store_app/models/bn_screen.dart';
// import 'package:ui_store_app/screens/bn_screens/articles_screen.dart';
// import 'package:ui_store_app/screens/bn_screens/favorites_screen.dart';
// import 'package:ui_store_app/screens/bn_screens/home_screen.dart';
// import 'package:ui_store_app/screens/bn_screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  final List<BnScreen> _bnscreen = <BnScreen> [
    // BnScreen(title: 'Home', widget: HomeScreen()),
    // BnScreen(title: 'Favorites', widget: FavoritesScreen()),
    // BnScreen(title: 'Articles', widget: ArticlesScreen()),
    // BnScreen(title: 'Settings', widget: SettingsScreen()),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_bnscreen[_currentIndex].title),
        centerTitle: true,
      ),
      body: _bnscreen[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        //type: BottomNavigationBarType.shifting,
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.favorite_outline),
            label: 'Favorite',
            activeIcon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orangeAccent,
            icon: Icon(Icons.article_outlined),
            label: 'Articles',
            activeIcon: Icon(Icons.article),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pinkAccent,
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
            activeIcon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
