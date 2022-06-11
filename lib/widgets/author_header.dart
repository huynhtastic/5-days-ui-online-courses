import 'package:flutter/material.dart';
import '../models/course_info.dart';

class AuthorHeader extends StatelessWidget {
  final CourseInfo course;
  final Color color;
  const AuthorHeader(this.course, {Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 20,
          child: ClipOval(
            child: Image.asset(
              course.instructorAvatar,
            ),
          ),
        ),
        SizedBox(width: 16),
        Text(
          course.instructorName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color ?? Colors.black,
          ),
        ),
      ],
    );
  }
}
