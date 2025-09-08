import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.info, 
              size: 30,
            ),
          ],
          title: Text(
            "حول التطبيق",
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [

            ],
          ),
        ),  
      ),
    );
  }
}