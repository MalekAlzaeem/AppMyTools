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

  String get _allowedChars {
    String chars = '';
    if (includeLowercase) chars += 'abcdefghijklmnopqrstuvwxyz'; 
    if (includeUppercase) chars += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    if (includeNumbers) chars += '0123456789';
    if (includeSymbols) chars += '!@#\$%^&*()_+-=[]{}|;:,.<>?';
    return chars;
  }

  void generatePasswords() {
    final random = Random.secure();
    List<String> passwords = []; 
    for (int i = 0; i < wordCount; i++) { 
      String pwd = '';
      for (int j = 0; j < passwordLength; j++) { 
        pwd += _allowedChars[random.nextInt(_allowedChars.length)];
     }   
      passwords.add(pwd); 
    } 
    setState(() { generatedPasswords = passwords; });
  } 

  Future<void> copyToClipboard() async {
    final content = generatedPasswords.join('\n'); 
    await Clipboard.setData(ClipboardData(text: content)); 
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('تم النسخ إلى الحافظة'))); }

  @override Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child:Scaffold( 
      )
    ); 
  } 
} 
