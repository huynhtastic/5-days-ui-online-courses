import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseList extends StatelessWidget {
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
            'assets/images/Baker-pana.svg',
            height: 120,
            width: 120,
            semanticsLabel: 'Baking Class Logo',
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
                        'assets/images/chef.png',
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Chef Christoff',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(143, 151, 170, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Baking Sourdough bread with your digits',
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
