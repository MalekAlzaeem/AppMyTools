import 'package:flutter/material.dart';

class PasswordStrength extends StatefulWidget{
  @override
  _PasswordStrengthChecker createState() =>
      _PasswordStrengthChecker();
}

class _PasswordStrengthChecker extends State<PasswordStrength> {
  String _password = "";
  double _strength = 0;
  String _displayText = "ادخل كلمتة المرور";
  Color _strengthColor = Colors.grey;


  void _checkPasswordStrength(String password) {
    _password = password;
    double strength = 0;

    if(_password.isEmpty){
      _displayText = "ادخل كلمة المرور";
      _strengthColor = Colors.grey;
    }else {
      if(_password.length >= 8) strength += 0.25;
      if(_password.contains(RegExp(r"[A-Z]"))) strength += 0.25;
      if(_password.contains(RegExp(r"[0-9]"))) strength += 0.25;
      if(_password.contains(RegExp(r"[~!@#%^&*()_+-=/\$.*"))) strength += 0.25;

      _strength = strength;

      if(_strength <= 0.25){
        _displayText = "ضعيفة";
        _strengthColor = Colors.red;
      }else if(_strength <= 0.50){
        _displayText = "متوسطة" ;
        _strengthColor = Colors.orange;
      }else if(_strength <= 0.75){
        _displayText = "قوية" ;
        _strengthColor = Colors.lightGreen;
      }else{
        _displayText = "قوية جدا";
        _strengthColor = Colors.green;
      }
    }
    setState(() {});
  }


  @override
  Widget build(BuildContext context){
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("قوة كلمة المرور",style: TextStyle(fontWeight: FontWeight.w900),),
          actions: [
            Icon(Icons.lock_reset, size: 32,)
          ],
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xCCC1C1FF)
                ),
                child: Text(
                  "اجعل جميع كلمات المرور وجميع حساباتك وكل ما يحتاج الي كلمة مرور ان يكون أمن مع هذه الاداة تأكد من ان هذه الكلمات قوية",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Colors.green
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}