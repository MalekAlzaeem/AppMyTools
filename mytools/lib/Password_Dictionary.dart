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
            appBar: AppBar(
              actions: [
                Icon(Icons.security)
              ],
              title: Text("توليد قاموس كلمات المرور"),
              backgroundColor: Colors.blueGrey,
            ),
            body: Padding(
              padding: const EdgeInsets.all(15.0), 
              child: ListView( 
                children: [
                  TextField( 
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.numbers),
                      border: OutlineInputBorder(),
                      labelText: 'عدد الأحرف في كل كلمة مرور', 
                    ),
                    onChanged: (value) {
                    setState(() {
                    passwordLength = int.tryParse(value) ?? 12; }); }, ),
                  SizedBox(height: 20,),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration( 
                      prefixIcon: Icon(Icons.text_format_rounded),
                      border: OutlineInputBorder(),
                      labelText: 'عدد كلمات المرور في القاموس', 
                      ), 
                    onChanged: (value) {
                    setState(() { wordCount = int.tryParse(value) ?? 50; }); }, ), 
                  SizedBox(height: 10,),
                  Divider(),
                  SizedBox(height: 10,),
                  SwitchListTile(
                    title: Text('تضمين أحرف صغيرة'), 
                    value: includeLowercase, 
                    onChanged: (value) => setState(() => includeLowercase = value), ),
                  SwitchListTile(
                    title: Text('تضمين أحرف كبيرة'), 
                    value: includeUppercase, 
                    onChanged: (value) => setState(() => includeUppercase = value), ),
                  SwitchListTile( 
                    title: Text('تضمين أرقام'), 
                    value: includeNumbers, 
                    onChanged: (value) => setState(() => includeNumbers = value), ),
                  SwitchListTile( 
                    title: Text('تضمين رموز'), 
                    value: includeSymbols, 
                    onChanged: (value) => setState(() => includeSymbols = value), ),
                  SizedBox(height: 10,),
                  Divider(),
                  SizedBox(height: 10,),
                  ElevatedButton.icon( 
                    icon: Icon(Icons.build), 
                    label: Text('توليد القاموس'), 
                    onPressed: generatePasswords, ), 
                  SizedBox(height: 10), 
                ]
            ),
            ) 
          )
    ); 
  } 
} 
