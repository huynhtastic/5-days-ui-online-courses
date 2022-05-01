import 'package:flutter/material.dart';

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
            Text(
              'Hello Richard',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24.0),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black38.withOpacity(0.1),
                    blurRadius: 32,
                    offset: const Offset(0, 10)),
              ]),
              child: TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                  labelText: "Search",
                  suffixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 24.0),
                    child: Icon(Icons.search),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 28.0,
                    horizontal: 20.0,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
