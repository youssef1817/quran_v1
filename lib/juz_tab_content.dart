// الملف: lib/juz_tab_content.dart
import 'package:flutter/material.dart';

class JuzTabContent extends StatelessWidget {
  const JuzTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة وهمية بأسماء وصفحات بداية الأجزاء (للبداية فقط - يجب استبدالها ببيانات حقيقية أو أكثر دقة)
    final List<Map<String, dynamic>> juzList = [
      {'name': 'الجزء 1', 'page': 1},
      {'name': 'الجزء 2', 'page': 22},
      {'name': 'الجزء 3', 'page': 42},
      {'name': 'الجزء 4', 'page': 62},
      {'name': 'الجزء 5', 'page': 82},
      {'name': 'الجزء 6', 'page': 102},
      // ... أكمل بقية الأجزاء حتى الجزء 30 مع صفحات بداية تقريبية
      {'name': 'الجزء 29', 'page': 557},
      {'name': 'الجزء 30', 'page': 581},
    ];

    return ListView.builder(
      itemCount: juzList.length,
      itemBuilder: (context, index) {
        final juz = juzList[index];
        final juzName = juz['name'];
        final pageNumber = juz['page']; // استخراج رقم الصفحة

        return ListTile(
          title: Text(juzName),
          // يمكنك إضافة معلومات إضافية عن الجزء هنا إذا لزم الأمر
          trailing: Text('$pageNumber'), // عرض رقم الصفحة هنا
          // يمكنك إضافة onTap هنا للانتقال إلى صفحة الجزء لاحقًا
        );
      },
    );
  }
}