import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_online_courses/models/course_categories.dart';

import '../../../models/course_info.dart';
import '../../course_detail/course_detail_screen.dart';
import '../../../widgets/widgets.dart';

List<CourseInfo> courses = [
  CourseInfo(
    name: 'Cutting hair without a Richard',
    desc:
        "Cutting hair with a Richard is easy, but cutting hair without a Richard is a symbol of mastery. Join Hairdresser Door as she shows you how to master the technique without a Richard, because using a Richard is too Richard. Nobody wants to be too Richard.",
    image: 'assets/images/Hairdresser-amico.svg',
    instructorName: 'Hairdresser Door',
    instructorAvatar: 'assets/images/hairstylist.png',
    semanticsLabel: 'Hairdresser Class Logo',
    backgroundColor: const Color.fromRGBO(248, 241, 174, 1),
    category: CourseCategories.Hairstyling,
    languages: ['English', 'Vietnamese'],
    lectureLength: '14 (2 hours, 14 mins)',
  ),
  CourseInfo(
    name: 'Baking sourdough bread in the sun',
    desc:
        "Using an oven is hard. Pre-heating, setting the correct temperature, and correct rack placement are just a few things that make using an oven a pain. Chef Christoff answers all of these problems: use nature's oven instead.",
    image: 'assets/images/Baker-pana.svg',
    instructorAvatar: 'assets/images/chef.png',
    instructorName: 'Chef Christoff',
    semanticsLabel: 'Baking Class Logo',
    backgroundColor: const Color.fromRGBO(193, 225, 193, 1),
    category: CourseCategories.Cooking,
    languages: ['English', 'Vietnamese', 'Norwegian'],
    lectureLength: '18 (1 hour, 46 mins)',
  ),
];

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, i) => Course(courses[i]),
      separatorBuilder: (_, __) => SizedBox(height: 16),
      itemCount: courses.length,
    );
  }
}

class Course extends StatelessWidget {
  final CourseInfo course;

  Course(this.course, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => CourseDetailScreen(course))),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: course.backgroundColor,
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
                AuthorHeader(
                  course,
                  color: Color.fromRGBO(143, 151, 170, 1),
                ),
                SizedBox(height: 16),
                Text(
                  course.name,
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
      ),
    );
  }
}
