import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.info, 
              size: 30,
            ),
          ],
          title: Text(
            "حول التطبيق",
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(
                  Icons.apps,
                  size: 32, 
                  color: Colors.cyan
                ),
                title: Text(
                  "اسم التطبيق",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey,
                  ),
                ),
                subtitle: Text(
                  "Cyber Tools",
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.verified,
                  size: 32, 
                  color: Colors.cyan
                ),
                title: Text(
                  "الاصدار",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey,
                  ),
                ),
                subtitle: Text("v1.0.0"),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  size: 32, 
                  color: Colors.cyan
                ),
                title: Text(
                  "الوصف",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey,
                  ),
                ),
                subtitle: Text("توفر مجموعة الادوات هذه ميزات قوية بما في ذلك فحص قوة كلمة المرور وانشاء كلمة المرور والقواميس وتحليل الصور والتشفير انها ادوات لتعزيز الامن الرقمي الخاص بك."),
              ),
              Divider(),
                ListTile(
                leading: Icon(
                  Icons.person,
                  size: 32, 
                  color: Colors.cyan,
                ),
                title: Text(
                  "المطور",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey,
                  ),
                ),
                subtitle: Text("مالك عبدالملك الزعيم"),
              ),
              Divider(),
            ],
          ),
        ),  
      ),
    );
  }
}