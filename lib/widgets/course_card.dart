import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({
    Key? key,
    required this.courseImage,
    required this.courseName,
    required this.courseTrainer,
    required this.courseHours,
    required this.courseRating,
  }) : super(key: key);

  final String courseImage;
  final String courseName;
  final String courseTrainer;
  final String courseHours;
  final String courseRating;

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
   bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width,
      // height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: 110,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0.0, 1.0),
                ),
              ],
            ),
            child: Stack(
              children: [
                Container(
                  width: 110,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.courseImage),
                      // fit: BoxFit.contain,
                    ),
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade400,
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(
                              () {
                            _isPressed
                                ? _isPressed = false
                                : _isPressed = true;
                          },
                        );
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: _isPressed ? Colors.red : Colors.white,
                        size: 21,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.courseName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                  // SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'By ${widget.courseTrainer}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 0,
                            color: Color(0xffA1A1A1),
                          ),
                        ),
                      ),
                      // SizedBox(width: 12),
                      // Spacer(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Color(0xffA1A1A1),
                            ),
                            SizedBox(width: 4),
                            Text(
                              '${widget.courseHours} Hours',
                              style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 0,
                                color: Color(0xffA1A1A1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFBB344),
                      ),
                      SizedBox(width: 5),
                      Text(
                        widget.courseRating,
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}