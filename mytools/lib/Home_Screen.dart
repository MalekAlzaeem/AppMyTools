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
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.no_encryption_gmailerrorred,size: 32,color: Colors.cyan,),
                          Text("  اداة تشفير النص",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  FilledButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.image_search,size: 32,color: Colors.cyan,),
                          Text("  اداة تحليل الصور",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  FilledButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.library_books,size: 32,color: Colors.cyan,),
                          Text("  اداة توليد القواميس",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  FilledButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.security,size: 32,color: Colors.cyan,),
                          Text("  اداة توليد كلمة المرور",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  FilledButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.lock_reset,size: 32,color: Colors.cyan,),
                          Text("  اداة فحص قوة كلمت المرور",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)
                        ],
                      )
                  ),
                ],
              ),
            ),
          ),
          drawer: Drawer(
            width: 220,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Text("الشريط الجانبي",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  padding: EdgeInsets.all(40),
                ),
                ListTile(
                  leading: Icon(Icons.settings,color: Colors.cyan,size: 32,),
                  title: Text("الاعدادات  ",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blueGrey),),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.support_agent, color: Colors.cyan, size: 32,),
                  title: Text("المساعدة", style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blueGrey),),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.info,color: Colors.cyan,size: 32,),
                  title: Text("حول التطبيق  ",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blueGrey),),
                  onTap: (){},
                ),
              ],
            ),
          ),
        ),)
    ;
  }
}
