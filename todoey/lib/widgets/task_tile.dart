import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.task, required this.toggleDone});

  final Task task;
  final Function(bool?) toggleDone;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: task.isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleDone,
      ),
    );
  }
}
