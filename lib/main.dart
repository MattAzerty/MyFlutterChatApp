import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'pages/FirstPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: FirstPage(),
    );
  }
}







