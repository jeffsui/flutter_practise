import 'package:flutter/material.dart';
import 'package:myapp/navigator/First_Screen.dart';
import 'package:myapp/navigator/todo_screen.dart';
// import 'mytabs.dart';
import 'layout/row_demo.dart';
import 'model/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:TodoScreen(todos: todos,),
    );
  }
}
