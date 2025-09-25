import 'package:flutter/material.dart';


class HelpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child:  Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.support_agent, 
            size: 32,
          ),
        ],
        title: Text(
          "المساعدة",
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