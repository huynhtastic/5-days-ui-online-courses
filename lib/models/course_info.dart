import 'package:flutter/material.dart';
import './course_categories.dart';

class CourseInfo {
  String name;
  String image;
  String semanticsLabel;
  String instructorAvatar;
  String instructorName;
  String desc;
  CourseCategories category;
  Color backgroundColor;

  CourseInfo({
    @required this.name,
    @required this.image,
    @required this.semanticsLabel,
    @required this.instructorAvatar,
    @required this.instructorName,
    @required this.desc,
    @required this.category,
    @required this.backgroundColor,
  });
}
