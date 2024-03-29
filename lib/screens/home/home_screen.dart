import 'package:flutter/material.dart';
import './widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SearchBar(),
                SizedBox(height: 32.0),
                CategoryFilter(),
                SizedBox(height: 40.0),
                RelevanceFilter(),
                SizedBox(height: 8.0),
                CourseList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
