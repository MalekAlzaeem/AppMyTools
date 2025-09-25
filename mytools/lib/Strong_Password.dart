import 'package:flutter/material.dart';
class Screen8 extends StatelessWidget {
bool t = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("كلمة مرور قوية",style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          leading: Icon(Icons.password_rounded),
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
            ]
          ),
        ),
      ),
    );
  }
}