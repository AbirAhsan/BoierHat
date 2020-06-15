import 'package:boierhat/widget/bookcategory.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boier Hat"),
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: <Widget>[
              Text("Home"),
              Text("About Us"),
            ],
          ),
        ),
      ),
      body: Container(
        child: BookCategory(),
      ),
    );
  }
}
