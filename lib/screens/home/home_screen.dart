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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SearchBar(),
            SizedBox(height: 32.0),
            CategoryFilter(),
            SizedBox(height: 40.0),
            DropdownButton<String>(
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
              onChanged: (_) {},
              value: 'Popular',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
