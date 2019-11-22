import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}):super(key:key);
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: (){
              Navigator.pop(context);
            },
          ),
           ListTile(
            title: Text('Item 2'),
            onTap: (){
              Navigator.pop(context);
            },
          ),
           ListTile(
            title: Text('Item 3'),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),

    ),
    );
  }
}