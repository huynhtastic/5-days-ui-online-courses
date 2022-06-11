import 'package:flutter/material.dart';

import 'widgets/widgets.dart';
import '../../models/course_info.dart';

class CourseDetailScreen extends StatelessWidget {
  final CourseInfo course;

  const CourseDetailScreen(this.course, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
      ),
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            CourseImage(
              image: course.image,
              backgroundColor: course.backgroundColor,
              semanticsLabel: course.semanticsLabel,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: DetailSheet(course),
            ),
          ],
        ),
      ),
    );
  }
}
