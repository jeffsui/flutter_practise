import 'package:flutter/material.dart';
import 'package:myapp/navigator/selection_button.dart';
class NavigationHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Navigation返回数据demo'),
      ),
      body: new Center(child: new SelectionButton(),),
    );
  }
}