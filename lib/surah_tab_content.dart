// الملف: lib/surah_tab_content.dart
import 'package:flutter/material.dart';

class SurahTabContent extends StatelessWidget {
  const SurahTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة وهمية بأسماء وأرقام وصفحات السور (للبداية فقط - يجب استبدالها ببيانات حقيقية)
    final List<Map<String, dynamic>> surahList = [
      {'number': 1, 'name': 'سورة الفاتحة', 'page': 1},
      {'number': 2, 'name': 'سورة البقرة', 'page': 2},
      {'number': 3, 'name': 'سورة آل عمران', 'page': 50},
      {'number': 4, 'name': 'سورة النساء', 'page': 77},
      // ... المزيد من السور مع أرقام صفحاتها
      {'number': 114, 'name': 'سورة الناس', 'page': 604}, // آخر صفحة في المصحف تقريبًا
    ];

    return ListView.builder(
      itemCount: surahList.length,
      itemBuilder: (context, index) {
        final surah = surahList[index];
        final surahNumber = surah['number'];
        final surahName = surah['name'];
        final pageNumber = surah['page']; // استخراج رقم الصفحة

        return ListTile(
          title: Text('$surahNumber. $surahName'),
          subtitle: const Text('مكية - 7 آيات'), // معلومات وهمية مؤقتًا
          trailing: Text('$pageNumber'), // عرض رقم الصفحة هنا
          // يمكنك إضافة onTap هنا للانتقال إلى صفحة السورة لاحقًا
        );
      },
    );
  }
}