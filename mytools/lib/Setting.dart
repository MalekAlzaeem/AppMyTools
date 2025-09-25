import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child:Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        leading: Icon(Icons.settings),
        title: Text(
          "الاعدادات",
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
         backgroundColor: Colors.blueGrey,
      ),
        ),
    );
  }
}