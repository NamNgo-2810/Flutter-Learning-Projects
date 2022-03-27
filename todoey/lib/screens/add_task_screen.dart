import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskName = '';
    
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              cursorColor: Colors.black,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                newTaskName = newValue;
              },
            ),
            TextButton(
              onPressed: () {
                if (newTaskName.isNotEmpty) {
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskName);
                }
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
