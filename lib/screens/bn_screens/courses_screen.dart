import 'package:elancer_project_1/widgets/course_card.dart';
import 'package:elancer_project_1/widgets/work_staff_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  // bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            CourseCard(   // Course No 1
              courseImage: 'images/interior-design.png',
              courseName: AppLocalizations.of(context)!.coursesScreen_courseNo1_name,
              courseTrainer: AppLocalizations.of(context)!.coursesScreen_courseNo1_trainer,
              courseHours: '90',
              courseRating: '4.7',
            ),
            CourseCard(   // Course No 2
              courseImage: 'images/flutter.png',
              courseName: AppLocalizations.of(context)!.coursesScreen_courseNo2_name,
              courseTrainer: AppLocalizations.of(context)!.coursesScreen_courseNo2_trainer,
              courseHours: '90',
              courseRating: '4.9',
            ),
            CourseCard(   // Course No 3
              courseImage: 'images/ui-design.png',
              courseName: AppLocalizations.of(context)!.coursesScreen_courseNo3_name,
              courseTrainer: AppLocalizations.of(context)!.coursesScreen_courseNo3_trainer,
              courseHours: '90',
              courseRating: '4.8',
            ),
            CourseCard(   // Course No 4
              courseImage: 'images/graphic-design.png',
              courseName: AppLocalizations.of(context)!.coursesScreen_courseNo4_name,
              courseTrainer: AppLocalizations.of(context)!.coursesScreen_courseNo4_trainer,
              courseHours: '70',
              courseRating: '4.8',
            ),
            CourseCard(   // Course No 5
              courseImage: 'images/motion-graphic.png',
              courseName: AppLocalizations.of(context)!.coursesScreen_courseNo5_name,
              courseTrainer: AppLocalizations.of(context)!.coursesScreen_courseNo5_trainer,
              courseHours: '80',
              courseRating: '4.7',
            ),
            CourseCard(   // Course No 6
              courseImage: 'images/laravel.png',
              courseName: AppLocalizations.of(context)!.coursesScreen_courseNo6_name,
              courseTrainer: AppLocalizations.of(context)!.coursesScreen_courseNo6_trainer,
              courseHours: '80',
              courseRating: '4.8',
            ),
          ],
        ),
      ),
    );
  }
}
