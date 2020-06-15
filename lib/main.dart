import 'package:boierhat/myhomepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(BoierHat());

class BoierHat extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Boier Hat", theme: ThemeData(), home: MyHomePage());
  }
}
