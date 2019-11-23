import 'dart:js';

import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
        title: Text('Second Screen') ,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back'),
          onPressed: (){
            Navigator.pop(
              context,
            );
          },
        ),
      )
    );
  }
}