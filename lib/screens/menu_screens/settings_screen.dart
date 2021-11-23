import 'package:elancer_project_1/Providers/lang_provider.dart';
import 'package:elancer_project_1/main.dart';
import 'package:elancer_project_1/shared_preferences/shared_preferences_controller.dart';
import 'package:elancer_project_1/widgets/app_bar.dart';
import 'package:elancer_project_1/widgets/menu_screen_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
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
        title:
            Text(AppLocalizations.of(context)!.settingsScreen_screenMainTitle),
        actions: [
          // IconButton(
          //   onPressed: hasFirstActionsIcon ? (){} : null,
          //   icon: Icon(firstActionsIconButton, size: 20),
          // ),
          // IconButton(
          //   onPressed: hasSecondActionsIcon ? (){} : null,
          //   icon: Icon(secondActionsIconButton, size: 20),
          // ),
          // const SizedBox(width: 5),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, size: 30),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Divider(
                //   color: Colors.grey.shade800,
                //   thickness: 0.5,
                //   indent: 20,
                //   endIndent: 20,
                //   height: 20,
                // ),
                ListTile(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Stack(
                              // overflow: Overflow.visible,
                              // clipBehavior: Clip.antiAlias,
                              children: [
                                // Positioned(
                                //   right: -40.0,
                                //   top: -40.0,
                                //   child: InkResponse(
                                //     onTap: () {
                                //       Navigator.of(context).pop();
                                //     },
                                //     child: CircleAvatar(
                                //       child: Icon(Icons.close),
                                //       backgroundColor: Colors.red,
                                //     ),
                                //   ),
                                // ),
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(AppLocalizations.of(
                                                  context)!
                                              .settingsScreen_languagePopUpTitle),
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Divider(
                                        height: 10,
                                      ),
                                      SizedBox(height: 30),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/saudi_arabia_flag.png'),
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  radius: 30,
                                                ),
                                                SizedBox(height: 10),
                                                Text(AppLocalizations.of(
                                                        context)!
                                                    .settingsScreen_languagePopUpArabic),
                                              ],
                                            ),
                                            // onTap: () => changeLang(),
                                            onTap: () {
                                              if (Provider.of<LangProvider>(
                                                          context,
                                                          listen: false)
                                                      .lang ==
                                                  'en') {
                                                Provider.of<LangProvider>(
                                                        context,
                                                        listen: false)
                                                    .changeLang();
                                                RestartWidget.restartApp(
                                                    context);
                                              }
                                            },
                                          ),
                                          // SizedBox(width: 30),
                                          InkWell(
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/usa_flag.png'),
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  radius: 30,
                                                ),
                                                SizedBox(height: 10),
                                                Text(AppLocalizations.of(
                                                        context)!
                                                    .settingsScreen_languagePopUpEnglish),
                                              ],
                                            ),
                                            // onTap: () => changeLang(),
                                            onTap: () {
                                              if (Provider.of<LangProvider>(
                                                          context,
                                                          listen: false)
                                                      .lang ==
                                                  'ar') {
                                                Provider.of<LangProvider>(
                                                        context,
                                                        listen: false)
                                                    .changeLang();
                                                RestartWidget.restartApp(
                                                    context);
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                      // Padding(
                                      //   padding: EdgeInsets.all(8.0),
                                      //   child: TextFormField(),
                                      // ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(8.0),
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.red.shade400,
                    // child: Icon(
                    //   Icons.language,
                    //   color: Colors.white,
                    //   size: 25,
                    // ),
                    backgroundImage: AssetImage(flag()),
                    radius: 25,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 5),
                  title: Text(
                    AppLocalizations.of(context)!.settingsScreen_language,
                    style: TextStyle(
                      color: Color(0xff7B7B81),
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Image(
      //         image: AssetImage('images/settings.png'),
      //         width: 200,
      //         height: 200,
      //       ),
      //       SizedBox(height: 30),
      //       Text(
      //         'COMING SOON',
      //         style: TextStyle(
      //           color: Colors.grey.shade800,
      //           fontSize: 25,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  String flag() {
    if (Provider.of<LangProvider>(context, listen: false).lang == 'en') {
      return 'images/usa_flag.png';
    } else {
      return 'images/saudi_arabia_flag.png';
    }
  }
// void changeLang() {
//
//
//   Provider.of<LangProvider>(context, listen: false).changeLang();
// }

// void changeLang(String lang) async {
//   await SharedPreferencesController().setLanguage(language: lang);
//   Future.delayed(
//     const Duration(milliseconds: 500),
//     () {
//       Navigator.pushNamed(context, '/launch_screen');
//     },
//   );
// }
}
