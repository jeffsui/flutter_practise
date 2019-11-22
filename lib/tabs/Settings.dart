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
      appBar: AppBar(
        //no leading property will display a three dashes icon
      ),
      drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.only(),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('凭海临风'),
            accountEmail: Text('pinghailinfeng79@gmail.com'),
            currentAccountPicture: CircleAvatar(
              //CircleAvatar:circle header image 
              backgroundImage: NetworkImage('https://jeffsui.github.io/images/avatar.jpg'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('http://www.liulongbin.top:3005/images/bg1.jpg')
              )
            ),
          ),
        
          // DrawerHeader(
          //   child: Text('Drawer Header'),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          // ),
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