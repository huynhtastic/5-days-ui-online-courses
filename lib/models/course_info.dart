import 'package:flutter/foundation.dart';

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
