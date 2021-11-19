import 'package:elancer_project_1/widgets/course_card.dart';
import 'package:elancer_project_1/widgets/work_staff_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            CourseCard(
              courseImage: 'images/interior-design.png',
              courseName: 'Interior Design',
              courseTrainer: 'Ola AlFarra',
              courseHours: '90',
              courseRating: '4.7',
            ),
            CourseCard(
              courseImage: 'images/flutter.png',
              courseName: 'Flutter',
              courseTrainer: 'Momen Sisalem',
              courseHours: '90',
              courseRating: '4.9',
            ),
            CourseCard(
              courseImage: 'images/ui-design.png',
              courseName: 'UX UI',
              courseTrainer: 'Bashar Luzon',
              courseHours: '90',
              courseRating: '4.8',
            ),
            CourseCard(
              courseImage: 'images/graphic-design.png',
              courseName: 'Graphic Design',
              courseTrainer: 'Baher Skaik',
              courseHours: '70',
              courseRating: '4.8',
            ),
            CourseCard(
              courseImage: 'images/motion-graphic.png',
              courseName: 'Motion Graphic',
              courseTrainer: 'Mohamed Wadia',
              courseHours: '80',
              courseRating: '4.7',
            ),
            CourseCard(
              courseImage: 'images/laravel.png',
              courseName: 'PHP Laravel',
              courseTrainer: 'Mohamed Safadi',
              courseHours: '80',
              courseRating: '4.8',
            ),
          ],
        ),
      ),
    );
  }
}
