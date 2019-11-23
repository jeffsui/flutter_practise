import 'package:flutter/material.dart';
import 'package:myapp/navigator/First_Screen.dart';
// import 'mytabs.dart';
import 'layout/row_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:FirstScreen()
    );
  }
}
