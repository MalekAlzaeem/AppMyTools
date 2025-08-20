import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            title: Text("My Tools",style: TextStyle(fontWeight: FontWeight.w900),),
            actions: [
              Icon(Icons.home,size: 32,)
            ],
          ),
        ),)
    ;
  }
}
