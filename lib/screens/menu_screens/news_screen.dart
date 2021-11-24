import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(AppLocalizations.of(context)!.newsScreen_screenMainTitle),
        actions: const [
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
            icon: const Icon(Icons.arrow_back, size: 30),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('images/newspaper.png'),
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 30),
            Text(
              'COMING SOON',
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
