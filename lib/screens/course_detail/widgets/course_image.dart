import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseImage extends StatelessWidget {
  final String image;
  final Color backgroundColor;
  final String semanticsLabel;

  const CourseImage({
    Key key,
    @required this.image,
    @required this.backgroundColor,
    @required this.semanticsLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: SvgPicture.asset(
          image,
          fit: BoxFit.cover,
          semanticsLabel: semanticsLabel,
        ),
      ),
    );
  }
}
