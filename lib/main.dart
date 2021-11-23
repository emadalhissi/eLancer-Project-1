import 'package:elancer_project_1/Providers/lang_provider.dart';
import 'package:elancer_project_1/screens/menu_screens/about_developer_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/about_elancer_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/achievements_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/courses_screen.dart';
import 'package:elancer_project_1/screens/menu_screens/founder_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/home_screen.dart';
import 'package:elancer_project_1/screens/bn_screens/menu_screen.dart';
import 'package:elancer_project_1/screens/menu_screens/my_profile_screen.dart';
import 'package:elancer_project_1/screens/menu_screens/news_screen.dart';
import 'package:elancer_project_1/screens/menu_screens/settings_screen.dart';
import 'package:elancer_project_1/screens/menu_screens/work_staff_screen.dart';
import 'package:elancer_project_1/screens/enter_name_sceen.dart';
import 'package:elancer_project_1/screens/launch_screen.dart';
import 'package:elancer_project_1/screens/login_sceen.dart';
import 'package:elancer_project_1/screens/main_screen.dart';
import 'package:elancer_project_1/screens/notifications_screen.dart';
import 'package:elancer_project_1/screens/outboarding/out_boarding_screen.dart';
import 'package:elancer_project_1/screens/register_sceen.dart';
import 'package:elancer_project_1/screens/search_screen.dart';
import 'package:elancer_project_1/screens/select_birth_day_screen.dart';
import 'package:elancer_project_1/shared_preferences/shared_preferences_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elancer_project_1/shared_preferences/shared_preferences_controller.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesController().initSharedPreferences();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => RestartWidget(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<LangProvider>(
              create: (context) => LangProvider(),
            ),
          ],
          child: MyMaterialApp(),
        ),
      ),
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Tajawal'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        //----------------------PRIMARY-------------------------------
        '/launch_screen': (context) => const LaunchScreen(),
        '/out_boarding_screen': (context) => const OutBoardingScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/register_screen': (context) => const RegisterScreen(),
        '/enter_name_screen': (context) => const EnterNameScreen(),
        '/select_age_screen': (context) => const SelectBirthDayScreen(),
        '/main_screen': (context) => const MainScreen(),
        //----------------------BN SCREENS-------------------------------
        '/achievements_screen': (context) => const AchievementsScreen(),
        '/courses_screen': (context) => const CoursesScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/about_lancer_screen': (context) => const AboutELancerScreen(),
        '/menu_screen': (context) => const MenuScreen(),
        //----------------------MENU SCREENS-------------------------------
        '/my_profile_screen': (context) => const MyProfileScreen(),
        '/work_staff_screen': (context) => const WorkStaffScreen(),
        '/founder_screen': (context) => const FounderScreen(),
        '/about_developer_screen': (context) => const AboutDeveloperScreen(),
        '/news_screen': (context) => const NewsScreen(),
        '/settings_screen': (context) => const SettingsScreen(),
        //----------------------ELSE-------------------------------
        '/notifications_screen': (context) => const NotificationsScreen(),
        '/search_screen': (context) => const SearchScreen(),
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
      locale: Locale(Provider.of<LangProvider>(context).lang),
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
