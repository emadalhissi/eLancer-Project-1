import 'package:elancer_project_1/screens/enter_name_sceen.dart';
import 'package:elancer_project_1/screens/launch_screen.dart';
import 'package:elancer_project_1/screens/login_sceen.dart';
import 'package:elancer_project_1/screens/main_screen.dart';
import 'package:elancer_project_1/screens/register_sceen.dart';
import 'package:elancer_project_1/screens/select_age_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/main_screen': (context) => const MainScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/register_screen': (context) => const RegisterScreen(),
        '/enter_name_screen': (context) => const EnterNameScreen(),
        '/select_age_screen': (context) => const SelectAgeScreen(),
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale('en'),
    );
  }
}
