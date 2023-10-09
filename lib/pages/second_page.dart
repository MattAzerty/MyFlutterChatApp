import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SecondPage extends StatefulWidget {//Dynamique (stateful)
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  /*final myList = [
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
  ];*/

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("MyCollection001").orderBy('Date', descending: true).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){

          if(snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          }

          if(!snapshot.hasData){
            return Text("No Data");
          }

          List<dynamic> myCollection001 = [];

          for (var element in snapshot.data!.docs) {
          myCollection001.add(element);
          }

          return ListView.builder(
            itemCount: myCollection001.length,
            itemBuilder: (context, index){

              final item = myCollection001[index];
              final icon = ["one","two","three"][Random().nextInt(3)];
              final title = item['Field001'];
              final subtitle = item['Field002'];
              final Timestamp timestamp = item['Date'];
              final String dateString = DateFormat().add_yMd().format(timestamp.toDate());

              return  Card(
                child: ListTile(
                  leading: Image.asset("assets/images/$icon.png"),
                  title: Text("$title: $dateString"),
                  subtitle: Text("$subtitle"),
                  trailing: Icon(Icons.more_vert),
                ),
              );
            } ,
          );

        } ,
      ) ,
    );
  }
}
