import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("secondPage")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is a text"),
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