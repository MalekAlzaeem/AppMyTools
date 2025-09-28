# Cyber Tools - تطبيق أدوات الأمن الرقمي
 # نظرة عامة
Cyber Tools هو تطبيق Flutter متكامل يقدم مجموعة شاملة من الأدوات الأمنية الرقمية لتأمين بياناتك وتحليل المحتوى. التطبيق مدعوم بالكامل باللغة العربية ويتميز بواجهة مستخدم بديهية وسهلة الاستخدام.

https://img.shields.io/badge/App-Cyber%2520Tools-blue
https://img.shields.io/badge/Version-1.0.0-green
https://img.shields.io/badge/Flutter-3.19-blue

 الميزات الرئيسية
 #أدوات الأمان
تشفير النص: تشفير وفك تشفير النصوص باستخدام خوارزميات آمنة

تحليل الصور: استخراج البيانات الوصفية (EXIF) والموقع من الصور

توليد كلمات المرور: إنشاء كلمات مرور قوية وقابلة للتخصيص

فحص قوة كلمات المرور: تحليل مستوى أمان كلمات المرور

توليد القواميس: إنشاء قوائم كلمات مرور لأغراض الأمان والاختبار

 #واجهة المستخدم
دعم اللغة العربية: واجهة مستخدم كاملة باللغة العربية

تصميم Material Design: واجهة حديثة وسهلة الاستخدام

شريط جانبي: تنقل سريع بين جميع الأدوات

ألوان متناسقة: تصميم بصري مريح للعين

 #التثبيت والبدء
المتطلبات الأساسية
Flutter SDK 3.19 أو أحدث

Dart 3.2 أو أحدث

Android Studio أو VS Code

 # خطوات التثبيت
استنساخ المشروع:

bash
git clone https://github.com/malekalzaeem/cyber-tools.git
cd cyber-tools
تثبيت الاعتماديات:

bash
flutter pub get
تشغيل التطبيق:

bash
flutter run
بناء التطبيق للإصدار
لـ Android (APK):

bash
flutter build apk --release
لـ Android (App Bundle):

bash
flutter build appbundle --release
 # دليل الاستخدام
الشاشة الرئيسية
التطبيق يفتح على الشاشة الرئيسية التي تحتوي على 5 أدوات رئيسية

استخدام الشريط الجانبي للوصول إلى الإعدادات والمساعدة وحول التطبيق
 
#  الأدوات المتاحة :   
1.  أداة تشفير النص
تشفير النصوص الحساسة لحمايتها

فك تشفير النصوص المشفرة

واجهة بسيطة وسهلة الاستخدام

2.  أداة تحليل الصور
اختيار الصور من معرض الجهاز

استخراج البيانات الوصفية (EXIF)

عرض معلومات الموقع، الجهاز، الطراز، وتاريخ الالتقاط

نسخ جميع البيانات إلى الحافظة

3.  أداة توليد القواميس
توليد قوائم كلمات مرور مخصصة

تخصيص طول كلمات المرور وعددها

اختيار أنواع الأحرف (صغيرة، كبيرة، أرقام، رموز)

نسخ القواميس generated إلى الحافظة

4.  أداة توليد كلمات المرور
إنشاء كلمات مرور قوية وآمنة

تخصيص إعدادات كلمة المرور

خيارات متعددة لأنواع الأحرف

5.  أداة فحص قوة كلمات المرور
تحليل كلمات المرور المدخلة

تقييم القوة (ضعيفة، متوسطة، قوية، قوية جدًا)

مؤشر بصري لتقدم مستوى القوة

 هيكل المشروع
text
lib/
├── main.dart                 # نقطة الدخول الرئيسية
├── About_App.dart           # شاشة حول التطبيق
├── Help.dart                # شاشة المساعدة والمعلومات
├── HomeScreen.dart          # الشاشة الرئيسية
├── Image_Analyzer.dart      # أداة تحليل الصور
├── Password_Dictionary.dart # أداة توليد القواميس
├── Password_Strength.dart   # أداة فحص قوة كلمات المرور
├── Setting.dart             # شاشة الإعدادات
├── Strong_Password.dart     # أداة توليد كلمات المرور
└── Text_Encryption.dart     # أداة تشفير النص
 #الاعتماديات
الحزمة	الوصف	الإصدار
image_picker	اختيار الصور من المعرض	^1.0.4
exif	استخراج البيانات الوصفية من الصور	^2.0.0
flutter/services	الوصول إلى خدمات النظام	مضمن
ملف pubspec.yaml
yaml
dependencies:
  flutter:
    sdk: flutter
  image_picker: ^1.0.4
  exif: ^2.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0
 #الكود الأساسي
هيكل الشاشة الرئيسية
dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  void openPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Tools"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(child: ...),
        drawer: Drawer(child: ...),
      ),
    );
  }
}
دعم اللغة العربية
dart
Directionality(
  textDirection: TextDirection.rtl,
  child: Scaffold(...)
)
 #الميزات التقنية
الأداء
واجهة مستخدم سلسة واستجابة سريعة

معالجة الصور بكفاءة

إدارة ذاكرة محسنة

#الأمان
جميع العمليات تتم محلياً على الجهاز

لا يتم إرسال أي بيانات إلى خوادم خارجية

حماية خصوصية المستخدم

#التوافق
يدعم أجهزة Android و iOS

متوافق مع إصدارات Flutter الحديثة

تصميم متجاوب مع مختلف أحجام الشاشات

 #المساهمة في المشروع
نرحب بمساهماتكم لتطوير التطبيق:

عمل Fork للمستودع

إنشاء فرع للميزة الجديدة (git checkout -b feature/amazing-feature)

عمل Commit للتغييرات (git commit -m 'Add amazing feature')

Push إلى الفرع (git push origin feature/amazing-feature)

فتح Pull Request

قواعد المساهمة
اتباع أسلوب البرمجة الموجود

كتابة تعليقات واضحة على الكود

اختبار التغييرات قبل الرفع

تحديث الوثائق ذات الصلة

# الإبلاغ عن الأخطاء
لإبلاغ عن خطأ، يرجى فتح issue جديد يتضمن:

وصف واضح للمشكلة

خطوات تكرار الخطأ

نسخة Flutter ونظام التشغيل

لقطات شاشة إذا أمكن

# الترخيص
هذا المشروع مرخص تحت رخصة MIT. انظر ملف LICENSE للتفاصيل.

# المطور
الاسم: مالك عبدالملك الزعيم

البريد الإلكتروني: malkmhywb036@gmail.com

GitHub: malekalzaeem

# استكشاف الأخطاء وإصلاحها
مشاكل شائعة وحلولها
التطبيق لا يعمل بعد التثبيت:

bash
flutter clean
flutter pub get
flutter run
مشاكل في تحليل الصور:

تأكد من منح التطبيق صلاحيات الوصول إلى التخزين

تحقق من أن الصورة تحتوي على بيانات EXIF

مشاكل في الواجهة العربية:

تأكد من وجود TextDirection.rtl في جميع الشاشات

السجلات والت debugging
bash
flutter run --verbose
flutter analyze
flutter test
# الطريق المستقبلي
الميزات المخطط إضافتها في المستقبل:

دعم التشفير المتقدم (AES، RSA)

نسخ احتياطي سحابي آمن

وضع التصميم الداكن

دعم لغات إضافية

تقارير أمنية مفصلة

# الدعم والاتصال
للاستفسارات والدعم التقني:

البريد الإلكتروني: malkmhywb036@gmail.com
تقارير الأخطاء: GitHub Issues

اقتراحات الميزات: Feature Requests

© 2025 مالك الزعيم. جميع الحقوق محفوظة.

آخر تحديث: سبتمبر 2025
