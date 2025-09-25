import 'package:flutter/material.dart';


class Help extends StatelessWidget {

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
      body: ListView(
          padding:  EdgeInsets.all(16),
          children: [
            Divider(),
            ListTile(
              leading: Icon(
                Icons.library_books,
                size: 32, 
                color: Colors.cyan,
              ),
              title: Text(
                "  اداة توليد القواميس",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.blueGrey,
                ),
              ),
              subtitle: Text(
                "تساعد هذه الاداة في انشاء قائمة كلمات مخصصة لمحاكاة تكسير كلمات المرور او الامان.",
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.security,
                size: 32, 
                color: Colors.cyan,
              ),
              title: Text(
                "  اداة توليد كلمة المرور",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.blueGrey,
                ),
              ),
              subtitle: Text(
                "تنشئ هذه الاداة كلمة مرور قوية وأمنة بناء على تفضيلاتك.",
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.lock_reset_rounded,
                size: 32, 
                color: Colors.cyan,
              ),
              title: Text(
                "  اداة فحص قوة كلمت المرور",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.blueGrey,
                ),
              ),
              subtitle: Text(
                "تقيم هذه الاداة مدى قوة او ضعف كامة المرور المعينة باستخدام معايير الامان.",
              ),
            ),
             Divider(),
            ListTile(
              leading: Icon(
                Icons.no_encryption_gmailerrorred_outlined,
                size: 32, 
                color: Colors.cyan,
              ),
              title: Text(
                "  اداة تشفير النص",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.blueGrey,
                ),
              ),
              subtitle: Text(
                "يمكنك تشفير وفك تشفير ملفاتك لحماية معلوماتك الحساسة.",
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.image_search,size: 32, 
                color: Colors.cyan,
              ),
              title: Text(
                "  اداة تحليل الصور",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.blueGrey,
                ),
              ),
              subtitle: Text(
                "تتيح لك هذه الاداة تحديد وتحليل الصور لاكتشاف جميع المعلومات حولها.",
              ),
            ),
        ],
        ),
    ),
    );
  }
}