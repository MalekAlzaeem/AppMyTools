import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:exif/exif.dart';
import 'package:flutter/services.dart';

class ImageAnalyzer extends StatefulWidget {
  const ImageAnalyzer({super.key});

  @override
  State<ImageAnalyzer> createState() => _ImageAnalyzerState();
}

class _ImageAnalyzerState extends State<ImageAnalyzer> {
  File? _image;
  Map<String, IfdTag>? _exifData;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        _exifData = null;
      });
    }
  }

  Future<void> _analyzeImage() async {
    if (_image == null) return;
    final bytes = await _image!.readAsBytes();
    final tags = await readExifFromBytes(bytes);
    setState(() {
      _exifData = tags;
    });
  }

  void _copyAllData() {
    if (_exifData == null) return;
    final allData = _exifData!.entries.map((e) => "${e.key}: ${e.value}").join(
        "\n");
    Clipboard.setData(ClipboardData(text: allData));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("تم نسخ كل البيانات!")),
    );
  }

  String _getSpecificData(String key) {
    if (_exifData == null) return "No data";
    return _exifData![key]?.toString() ?? "Not available";
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            title: Text("تحليل الصور",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700
              ),
            )
        ),
        body: Container(
          child:  SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(        ////
                      backgroundColor: Colors.blueGrey,
                      minimumSize: Size(300, 60),////////
                    ),
                    onPressed: _pickImage,
                    child: Text("أختر الصورة",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  if (_image != null) Image.file(_image!),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 60),
                    ),
                    onPressed: _analyzeImage,
                    child: Text("تحليل الصورة",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  if (_exifData != null && _exifData!.isNotEmpty) ...[
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 50),
                      ),
                      onPressed: () {
                        final data = _getSpecificData("GPS GPSLatitude");
                        final data2 = _getSpecificData("GPS GPSLongitude");
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text("الموقع"),
                            content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(data2, style: TextStyle(fontSize: 20),),
                                  Text(data, style: TextStyle(fontSize: 20),),
                                ]
                            ),
                          ),
                        );
                      },
                      child: Text("عرض الموقع"),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 50),
                      ),
                      onPressed: () {
                        final data = _getSpecificData("Image Make");
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text("الجهاز"),
                            content: Text(data, style: TextStyle(fontSize: 20),),
                          ),
                        );
                      },
                      child: Text("عرض جهاز الالتقاط"),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 50),
                      ),
                      onPressed: () {
                        final data = _getSpecificData("Image Model");
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text("طراز الكاميرا"),
                            content: Text(data, style: TextStyle(fontSize: 20),),
                          ),
                        );
                      },
                      child: Text("عرض طراز الكاميرا"),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        final data = _getSpecificData("Image DateTime");
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text("تاريخ الالتقاط"),
                            content: Text(data),
                          ),
                        );
                      },
                      child: Text("عرض التاريخ"),
                    ),
                    SizedBox(height: 20),
                    Text("جميع المعلومات المستخرجة:",
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        textDirection: TextDirection.ltr,
                        _exifData!.entries.map((e) => "${e.key}: ${e.value}").join("\n"),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _copyAllData,
                      child: Text("نسخ كل المعلومات"),
                    ),
                  ]
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}