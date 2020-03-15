import 'package:flutter/material.dart';
import 'package:fluttertasks/task.dart';
import 'package:fluttertasks/task_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Task> tasks = [
    Task(name: "Read a book"),
    Task(name: "call my father"),
    Task(name: " do my homework")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task -Lifit State'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return TaskCard(
              task: tasks[index],
              removeTask: () {
                setState(() {
                  tasks.remove(tasks[index]);
                });
              },
            );
          },
        ),
      ),
    );
  }
}
