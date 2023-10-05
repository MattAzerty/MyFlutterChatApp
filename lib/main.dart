import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                      "assets/images/flutterIcon.png",
                    scale: 5.1,
                  ),
                ),
                const Text(
                    "BodyOfTheAPPCentered",
                        style: TextStyle(
                          fontSize: 30,
                        )
                ),
                const Text(
                    "SecondLineInAColumn",
                    style: TextStyle(
                      fontSize: 22,
                       fontFamily: 'Zonex'
                    ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    "assets/images/flutter_logo.svg",
                  ),
                ),
              ],
            )
        ),
      )
    );
  }
}
