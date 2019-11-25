import 'package:flutter/material.dart';
import 'package:myapp/navigator/First_Screen.dart';
import 'package:myapp/navigator/navigation_home.dart';
import 'package:myapp/navigator/todo_screen.dart';
import 'package:myapp/pages/login/login_demo.dart';
import 'mytabs.dart';
import 'layout/row_demo.dart';
import 'model/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'My Application',
      debugShowCheckedModeBanner: false,
      // home:NavigationHomeScreen(),
      theme: new ThemeData(
        primaryColor: Colors.blue,
        backgroundColor: Colors.lightBlue,
      ),
      initialRoute: '/login',
      routes: <String,WidgetBuilder>{
        '/login':(BuildContext context)=> LoginDemo(),
        '/tabs': (BuildContext context) => Tabs(),
        '/row':(BuildContext context) => RowDemo(),
        '/navigation':(BuildContext context) =>NavigationHomeScreen(),
      },
    );
  }
}
