import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondPage extends StatefulWidget {//Dynamique (stateful)
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  final myList = [
    {
      "icon" : "one",
      "title" : "MyTitle001",
      "subtitle": "MySubtitle001"
    },
    {
      "icon" : "two",
      "title" : "MyTitle002",
      "subtitle": "MySubtitle002"
    },
    {
      "icon" : "three",
      "title" : "MyTitle003",
      "subtitle": "MySubtitle003"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage (List)"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index){

            final item = myList[index];
            final icon = item['icon'];
            final title = item['title'];
            final subtitle = item['subtitle'];

            return  Card(
              child: ListTile(
                leading: Image.asset("assets/images/$icon.png"),
                title: Text("$title"),
                subtitle: Text("$subtitle"),
                trailing: Icon(Icons.more_vert),
              ),
            );
          } ,
        ),
      ),
    );
  }
}
