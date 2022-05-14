import 'package:flutter/material.dart';

class RelevanceFilter extends StatefulWidget {
  @override
  State<RelevanceFilter> createState() => _RelevanceFilterState();
}

class _RelevanceFilterState extends State<RelevanceFilter> {
  var activeFilter = 'Popular';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: Container(),
      items: ['Popular', 'Hot', 'Top']
          .map(
            (filter) => DropdownMenuItem<String>(
              value: filter,
              child: Text(
                filter,
              ),
            ),
          )
          .toList(),
      onChanged: (val) {
        setState(() {
          activeFilter = val;
        });
      },
      value: activeFilter,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
