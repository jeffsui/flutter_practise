import 'package:flutter/material.dart';
import 'package:myapp/navigator/Second_Screen.dart';
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('First Screen') ,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Langtch new screen'),
          onPressed: (){
           Navigator.push(
             context, 
             new MaterialPageRoute(builder: (context)=> new SecondScreen())
           );
          },
        ),
      )
    );
  }
}
