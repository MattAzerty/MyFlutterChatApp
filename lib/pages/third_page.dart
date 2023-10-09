
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  final _formKey = GlobalKey<FormState>();

  final field1Controller = TextEditingController();
  final field2Controller = TextEditingController();
  String selectedOptionDropDownMenu = 'option1';
  DateTime selectedDateTime = DateTime.now();

  @override
  void dispose() {
    super.dispose();
    field1Controller.dispose();
    field2Controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Field 001",
                  hintText: "Enter Field value here",
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Field empty";
                  }
                  return null;
                },
                controller: field1Controller,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Field 002",
                      hintText: "Enter Field value here",
                      border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Field empty";
                    }
                    return null;
                  },
                  controller: field2Controller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(value:'option1',child: Text("Option1")),
                      DropdownMenuItem(value:'option2',child: Text("Option2")),
                      DropdownMenuItem(value:'option3',child: Text("Option3")),

                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder()
                    ),
                    value: selectedOptionDropDownMenu,
                    onChanged: (value){
                      setState(() {
                        selectedOptionDropDownMenu = value!;
                      });

                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: DateTimeFormField(
                  initialValue: selectedDateTime,
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: 'Chose a date and a time',
                  ),
                  mode: DateTimeFieldPickerMode.dateAndTime,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  onDateSelected: (DateTime value) {
                    setState(() {
                      selectedDateTime = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()){

                        final field1 = field1Controller.text;
                        final field2 = field2Controller.text;

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text("Sending field1: $field1 & field2: $field2"
                                    " & option: $selectedOptionDropDownMenu & dateTime: $selectedDateTime")
                            )
                        );

                        //Firestore collection register

                        CollectionReference myCollection = FirebaseFirestore.instance.collection("MyCollection001");
                        myCollection.add(
                          {
                            'Field001': field1,
                            'Field002':field2,
                            'Option':selectedOptionDropDownMenu,
                            'Date':selectedDateTime,
                          }
                        );



                      }

                      FocusScope.of(context).requestFocus(FocusNode());

                    },
                    child: const Text("Send"),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}

