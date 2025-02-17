import 'package:flutter/material.dart';
import 'package:quran_v1/bookmarks_tab_content.dart';
import 'package:quran_v1/juz_tab_content.dart';
import 'package:quran_v1/surah_tab_content.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
          title: const Text('Quran App'),
          bottom: const TabBar( // إضافة TabBar هنا
            tabs: [
              Tab(text: 'SURAHS'),
              Tab(text: 'JUZ2'),
              Tab(text: 'BOOKMARKS'),
            ],
          ),
       actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Action for search icon
            },
          ),
          IconButton(
          icon: Transform.scale(
           scaleX: -1, // عكس الاتجاه عموديًا
          child: const Icon(Icons.auto_stories),
          ),
              onPressed: () {
              // Action for notifications icon
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Action for more icon
            },
          ),
        ], 
      ),
      body: const TabBarView(
      children: [
         SurahTabContent(), // بدلاً من Center(child: Text('Surah Tab Content'))
         JuzTabContent(),   // بدلاً من Center(child: Text('Juz Tab Content'))
         BookmarksTabContent(), // بدلاً من Center(child: Text('Bookmarks Tab Content'))
         ],
      ),
    ),
   );
  }
}