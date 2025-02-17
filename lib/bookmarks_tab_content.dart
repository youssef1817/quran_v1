// الملف: lib/bookmarks_tab_content.dart
import 'package:flutter/material.dart';

class BookmarksTabContent extends StatelessWidget {
  const BookmarksTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة وهمية للمرجعيات (للبداية فقط - يجب استبدالها ببيانات حقيقية للمرجعيات المحفوظة)
    final List<String> bookmarkItems = [
      'آخر المتصفحات', // عنوان قسم "آخر المتصفحات"
      'سورة الكهف - صفحة 545، جزء 28',
      'سورة الزخرف - صفحة 494، جزء 25',
      'سورة محمد - صفحة 507، جزء 26',
      'مرجعيات الصفحات', // عنوان قسم "مرجعيات الصفحات"
      'سورة المجادلة - صفحة 542، جزء 28',
    ];

    return ListView.builder(
      itemCount: bookmarkItems.length,
      itemBuilder: (context, index) {
        final bookmarkItem = bookmarkItems[index];
        // يمكنك تخصيص تصميم العناصر بناءً على نوعها (عنوان قسم أو مرجعية)
        bool isSectionTitle = (bookmarkItem == 'آخر المتصفحات' || bookmarkItem == 'مرجعيات الصفحات');

        return ListTile(
          leading: Icon(Icons.bookmark_border), // إضافة أيقونة مرجعية في البداية
          title: Text(
            bookmarkItem,
            style: TextStyle(
              fontWeight: isSectionTitle ? FontWeight.bold : FontWeight.normal, // جعل عناوين الأقسام أكثر سمكًا
              color: isSectionTitle ? Colors.grey[600] : Colors.black87, // لون مختلف لعناوين الأقسام
            ),
          ),
          // يمكنك إضافة أيقونات أو معلومات إضافية للمرجعيات هنا
          // يمكنك إضافة onTap هنا للانتقال إلى الصفحة المرجعية لاحقًا
        );
      },
    );
  }
}