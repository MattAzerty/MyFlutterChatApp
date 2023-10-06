import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("firstPage (Button n svg)")
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
            Padding(
              padding: const EdgeInsets.only(top: 50),//Margin
              child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.only(left: 100, right: 100)),
                      backgroundColor: MaterialStatePropertyAll(Colors.red)
                  ) ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                           pageBuilder: (_, __, ___) => SecondPage()
                        )
                    );
                  },
                  child: Text(
                      "click me",
                      style: TextStyle(
                        fontSize: 22,)
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}