import 'package:flutter/material.dart';
import 'package:mytools/Home_Screen.dart';

void main()
{
  runApp(MyTools());
}

class MyTools extends StatelessWidget {
  const MyTools({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
