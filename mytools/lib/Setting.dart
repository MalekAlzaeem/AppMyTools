import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child:Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        leading: Icon(Icons.settings),
        title: Text(
          "الاعدادات",
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
         backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
           Divider(),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
          Text("اللغة",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,),),
            ],
          ),
          SizedBox(height: 10,),
          SwitchListTile(
            title: Text('أ / A',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,),),  
            value: t, 
            onChanged: null,
          ),
           Divider(),
        ],
      ),
        ),
    );
  }
}