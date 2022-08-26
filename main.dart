import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
 @override
 Widget build(BuildContext context){
  return MaterialApp(
    title: 'Exploration!',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MyHomePage(),
  );
 }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Space Exploration Planner"),
      ),
      body: Column(
        children: [
          Progress(),
          TaskList(),
        ],
      )
    ); 
  }
}
class TaskList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [ Text("You are this far away from Exploring the whole universe"),
          LinearProgressIndicator(value: 0,0),
          ],
    );
  }
}
class TaskList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children[
        TaskItem(label:"1"),
        TaskItem(label:"2"),
        TaskItem(label:"3"),
        TaskItem(label:"4"),
      ],  
    );
  }
}

class TaskItem extends StatelessWidget{
  final String label;

  const TaskItem({Key key, @required this.label}) : super(key: key)

  @override
  Widget build(BuildContext context){
    return Row (
      children:[
        Checkbox(onChanged: null, value: false),
        Text(label),
      ],
    );
  }
}