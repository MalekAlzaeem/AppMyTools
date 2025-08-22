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
    return Scaffold(

    );
  }
}