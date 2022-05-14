import 'package:flutter/material.dart';
import './widgets/search_bar.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Browse by categories',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 24.0),
                Row(
                  children: [
                    FilterChip(
                      padding: EdgeInsets.all(12),
                      onSelected: (m) => {},
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0.05),
                      label: Text(
                        'Business',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 75, 0.5),
                          // color: Color.fromRGBO(210, 120, 225, 1),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
