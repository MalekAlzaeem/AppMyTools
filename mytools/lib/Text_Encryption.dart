import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("تشفير الملفات",style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          leading: Icon(Icons.no_encryption),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );
  }
}