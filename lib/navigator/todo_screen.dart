import 'package:flutter/material.dart';
import 'package:myapp/model/todo.dart';

import 'detail_screen.dart';
class TodoScreen extends StatelessWidget {
  final List<Todo> todos;
  TodoScreen({Key key,@required this.todos}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Todos'),
      ),
      body: new ListView.builder(
        itemCount: this.todos.length,
        itemBuilder: (context,index){
          return new ListTile(
            title: new Text(todos[index].title),
            onTap:(){
              Navigator.push(
                context, 
                new MaterialPageRoute(
                  builder: (context)=> new DetailScreen(
                    todo: todos[index],
                  ),
                )
              );
            },
          );
        },

      ),
    );
  }
}