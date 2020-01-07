import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyDropDown()
    );
  }
}

class MyDropDown extends StatefulWidget {
  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  final List<String> subjects = ["Computer Science", "Biology", "Math"];

  String selectedSubject = "Biology";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: selectedSubject,
              onChanged: (value){
                setState(() {
                  selectedSubject = value;
                });
              },
              items: subjects.map<DropdownMenuItem<String>>((value){
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
            ),

            Text(selectedSubject, style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),)

          ],
        ),
      ),
    );
  }
}
