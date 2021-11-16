import 'package:elancer_project_1/screens/about_developer_screen.dart';
import 'package:elancer_project_1/screens/about_elancer_screen.dart';
import 'package:elancer_project_1/screens/achievements_screen.dart';
import 'package:elancer_project_1/screens/enter_name_sceen.dart';
import 'package:elancer_project_1/screens/launch_screen.dart';
import 'package:elancer_project_1/screens/login_sceen.dart';
import 'package:elancer_project_1/screens/main_screen.dart';
import 'package:elancer_project_1/screens/out_boarding_screen.dart';
import 'package:elancer_project_1/screens/register_sceen.dart';
import 'package:elancer_project_1/screens/select_birth_day_screen.dart';
import 'package:elancer_project_1/screens/work_staff_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => RestartWidget(
        child: MaterialApp(
          theme: ThemeData(fontFamily: 'Roboto'),
          debugShowCheckedModeBanner: false,
          initialRoute: '/launch_screen',
          routes: {
            '/launch_screen': (context) => const LaunchScreen(),
            '/main_screen': (context) => const MainScreen(),
            '/login_screen': (context) => const LoginScreen(),
            '/register_screen': (context) => const RegisterScreen(),
            '/enter_name_screen': (context) => const EnterNameScreen(),
            '/select_age_screen': (context) => const SelectBirthDayScreen(),
            '/about_developer_screen': (context) => const AboutDeveloperScreen(),
            '/about_lancer_screen': (context) => const AboutELancerScreen(),
            '/achievements_screen': (context) => const AchievementsScreen(),
            '/work_staff_screen': (context) => const WorkStaffScreen(),
            '/out_boarding_screen': (context) => const OutBoardingScreen(),
          },
          // localizationsDelegates: [
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          // ],
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: const [
            Locale('ar'),
            Locale('en'),
          ],
          locale: const Locale('en'),
        ),
      ),
    );
  }
}

// FOR RESTARTING APP
// CALL IT FROM ANYWHERE USING => RestartWidget.restartApp(context)

class RestartWidget extends StatefulWidget {
  const RestartWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()!.restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}