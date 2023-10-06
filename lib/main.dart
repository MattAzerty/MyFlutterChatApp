import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_chat_app/pages/second_page.dart';
import 'package:my_flutter_chat_app/pages/third_page.dart';

import 'pages/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  final myPages = [
    {
      "title" : "FirstPage",
      "icon": Icons.home,
    },
    {
      "title" : "SecondPage",
      "icon": Icons.list,
    },
    {
      "title" : "ThirdPage",
      "icon": Icons.add_circle,
    },
  ];

  setCurrentPage(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final title = myPages[_currentIndex]['title'];
    final List<IconData> icons = myPages.map((page) => page["icon"] as IconData).toList();
    final List<String> titles = myPages.map((page) => page["title"] as String).toList();

    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("$title"),
        ),
        body: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => setCurrentPage(index),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,

          items: [
            BottomNavigationBarItem(
                icon: Icon(icons[0]),
                label: titles[0]),
            BottomNavigationBarItem(
                icon: Icon(icons[1]),
                label: titles[1]),
            BottomNavigationBarItem(
              icon: Icon(icons[2]),
              label: titles[2]),
          ],
        ),
      ),
    );
  }
}







