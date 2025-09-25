import 'package:flutter/material.dart';

class TextEncryption extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("تشفير الملفات",style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          leading: Icon(Icons.no_encryption),
          backgroundColor: Colors.blueGrey,
        ),
         body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                spacing: 20,
                children: [
                  Expanded(
                    flex: 1,
                    child:SizedBox(
                    width: 100,
                    child: MaterialButton(
                  color: Colors.blue,
                  highlightColor: Colors.red,
                  splashColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {},
                  child: Text(
                    "أختيار",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                  ),
                ),
                Expanded(
                flex: 3,
                child: Container(
                width: 250,
                child: TextFormField(
                decoration: InputDecoration(
                    hintText: " أدخل اسم الملف",
                    labelText: "أسم الملف",
                    prefixIcon: Icon(Icons.file_open_rounded),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                ),
                ),
                ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                spacing: 20,
                children: [
                  Expanded(child: SizedBox(
              height: 70,
                child: MaterialButton(
                  color: Colors.blue,
                  highlightColor: Colors.red,
                  splashColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {},
                  child: Text(
                    "تشفير",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

                  ),
                  Expanded(child:SizedBox(
             height: 70,
                child: MaterialButton(
                  color: Colors.blue,
                  highlightColor: Colors.red,
                  splashColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {},
                  child: Text(
                    "فك تشفير",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                  ),
              ),
                ],
              ),
              SizedBox(height: 40,),
              TextFormField(

                decoration: InputDecoration(
                 
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
             width: 300,
             height: 70,
                child: MaterialButton(
                  color: Colors.blue,
                  highlightColor: Colors.red,
                  splashColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {},
                  child: Text(
                    "حفظ الملف",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                  ),
            ]
          ),
         ),
      ),
    );
  }
}