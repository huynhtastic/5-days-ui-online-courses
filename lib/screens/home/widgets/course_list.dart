import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseInfo {
  String image;
  String semanticsLabel;
  String instructorAvatar;
  String instructorName;
  String desc;

  CourseInfo({
    @required this.image,
    @required this.semanticsLabel,
    @required this.instructorAvatar,
    @required this.instructorName,
    @required this.desc,
  });
}

List<CourseInfo> courses = [
  CourseInfo(
    image: 'assets/images/Baker-pana.svg',
    semanticsLabel: 'Baking Class Logo',
    instructorAvatar: 'assets/images/chef.png',
    instructorName: 'Chef Christoff',
    desc: 'Baking Sourdough bread with your digits',
  )
];

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Course(courses[0]);
  }
}

class Course extends StatelessWidget {
  final CourseInfo course;

  Course(this.course, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(247, 188, 193, 1),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: SvgPicture.asset(
            course.image,
            height: 120,
            width: 120,
            semanticsLabel: course.semanticsLabel,
          ),
        ),
        SizedBox(width: 16),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(143, 151, 170, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                course.desc,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ],
    );
  }
}
