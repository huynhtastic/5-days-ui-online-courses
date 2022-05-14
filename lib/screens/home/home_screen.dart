import 'package:flutter/material.dart';
import './widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
      ),
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            SearchBar(),
            SizedBox(height: 32.0),
            CategoryFilter(),
          ],
        ),
      ),
    );
  }
}
