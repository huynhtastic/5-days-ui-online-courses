import 'package:flutter/material.dart';

class CategoryFilter extends StatefulWidget {
  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  var categories = [
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
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 24.0),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: categories.map(renderChip).toList(),
        )
      ],
    );
  }

  FilterChip renderChip(category) {
    final selected = filters.contains(category);
    return FilterChip(
      showCheckmark: false,
      padding: EdgeInsets.all(12),
      selected: selected,
      onSelected: (val) {
        setState(() {
          val
              ? filters.add(category)
              : filters.removeWhere((filtered) => category == filtered);
        });
      },
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.05),
      selectedColor: Colors.white,
      label: Text(
        category,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: selected
              ? const Color.fromRGBO(210, 120, 225, 1)
              : const Color.fromRGBO(0, 0, 75, 0.5),
        ),
      ),
    );
  }
}
