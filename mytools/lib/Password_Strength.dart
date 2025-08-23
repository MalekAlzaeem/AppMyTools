import 'package:flutter/material.dart';

class PasswordStrength extends StatefulWidget {
  @override
  _PasswordStrengthCheckerPageState createState() =>
      _PasswordStrengthCheckerPageState();
}

class _PasswordStrengthCheckerPageState
    extends State<PasswordStrength> {
  String _password = '';
  
  double _strength = 0;
  String _displayText = 'أدخل كلمة المرور';
  Color _strengthColor = Colors.grey;

                                               

 



  void _checkPasswordStrength(String password) {
    _password = password;

    double strength = 0;

    if (_password.isEmpty) {
      _displayText = 'أدخل كلمة المرور';
      _strengthColor = Colors.grey;
    } else {
      if (_password.length >= 8) strength += 0.25;
      if (_password.contains(RegExp(r'[A-Z]'))) strength += 0.25;
      if (_password.contains(RegExp(r'[0-9]'))) strength += 0.25;
      if (_password.contains(RegExp(r'[!@#\$&*~%^]'))) strength += 0.25;

      _strength = strength;

      if (_strength <= 0.25) {
        _displayText = 'ضعيفة';
        _strengthColor = Colors.red;
      } else if (_strength <= 0.5) {
        _displayText = 'متوسطة';
        _strengthColor = Colors.orange;
      } else if (_strength <= 0.75) {
        _displayText = 'قوية';
        _strengthColor = Colors.lightGreen;
      } else {
        _displayText = 'قوية جدًا';
        _strengthColor = Colors.green;
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
             Icon(Icons.security)
           ],
           title: Text('Password Strength'),
           backgroundColor: Colors.blueGrey,
          ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 50),
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
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),
                ),
              ),
              
              SizedBox(height: 30,),
              TextField(
                onChanged: _checkPasswordStrength,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                  prefixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
                obscureText: false,
              ),
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: _strength,
                backgroundColor: Colors.grey[300],
                color: _strengthColor,
                minHeight: 15,
              ),
              const SizedBox(height: 10),
              Text(
                _displayText,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: _strengthColor,
                ),
              ),
            ],
          ),
        ),
      // ),
    );
  }
}


