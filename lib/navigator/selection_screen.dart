import 'package:flutter/material.dart';
class SelectionScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Pick an option'),
      ),
      body: new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new RaisedButton(
              onPressed: (){
                 // Close the screen and return "Yep!" as the result
                Navigator.pop(context,'Yep!');
              },
              child: new Text('Yep!'),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new RaisedButton(
              onPressed: (){
                  // Close the screen and return "Nope!" as the result
                Navigator.pop(context,'Nope!');
              },
              child: new Text('Nope!'),
            ),
          ),
        ],
      ),
      
    ),
    );
  }
}