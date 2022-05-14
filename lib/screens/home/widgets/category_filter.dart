import 'package:flutter/material.dart';

class CategoryFilter extends StatefulWidget {
  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  final categories = [
    'Productivity',
    'Art',
    'Design',
    'Business',
    'Communications',
    '11+'
  ];

  final filters = <String>[];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Browse by categories',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 24.0),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: categories.map((category) {
            return FilterChip(
              padding: EdgeInsets.all(12),
              onSelected: (m) => {print(m)},
              backgroundColor: Color.fromRGBO(0, 0, 0, 0.05),
              label: Text(
                category,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 0, 75, 0.5),
                  // color: Color.fromRGBO(210, 120, 225, 1),
                ),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
