import 'dart:math';
import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart';



class PasswordDictionaryGenerator extends StatefulWidget {
  @override 
  _PasswordDictionaryGeneratorState createState() => _PasswordDictionaryGeneratorState();
 } 

class _PasswordDictionaryGeneratorState extends State<PasswordDictionaryGenerator> { 
  int passwordLength = 12;
  int wordCount = 50;
  bool includeUppercase = true;
  bool includeLowercase = true;
  bool includeNumbers = true; 
  bool includeSymbols = true;
  List<String> generatedPasswords = [];

  @override Widget build(BuildContext context) {
    return Scaffold( 

    ); 
  } 
} 
