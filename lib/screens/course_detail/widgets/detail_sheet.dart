import 'package:flutter/material.dart';

import '../../../models/course_info.dart';
import '../../../widgets/widgets.dart';

class DetailSheet extends StatelessWidget {
  final CourseInfo course;
  const DetailSheet(this.course, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      height: 560,
      padding: EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Chip(
              backgroundColor: const Color.fromRGBO(210, 120, 225, 0.1),
              label: Text(
                course.category.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(210, 120, 225, 1),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              course.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              course.desc,
              style: TextStyle(
                color: Colors.grey,
                height: 2,
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'Author',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38.withOpacity(0.1),
                    blurRadius: 32,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              padding: EdgeInsets.all(16.0),
              child: AuthorHeader(course),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Lectures', style: TextStyle(color: Colors.grey)),
                Text(
                  course.lectureLength,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Languages', style: TextStyle(color: Colors.grey)),
                Text(
                  course.languages.join(', '),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
