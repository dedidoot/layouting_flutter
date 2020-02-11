import 'package:flutter/material.dart';

import 'MainView.dart';

void main() => runApp(MyAppActivity());

class MyAppActivity extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyAppActivity> {
  List<Widget> widgets = [];

  MyState() {
    for (int i = 0; i < 1000; i++) {
      MainView view = new MainView();
      view.name = "index " + i.toString();
      widgets.add(view);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buat List Ini"),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: widgets,
          padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 16),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
