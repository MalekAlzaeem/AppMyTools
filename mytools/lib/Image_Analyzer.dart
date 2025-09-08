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
            )
        ),
        body: Container(
          child:  SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Column(
                children: [
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}