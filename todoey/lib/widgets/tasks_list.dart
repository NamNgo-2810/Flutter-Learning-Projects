import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return GestureDetector(
              child: TaskTile(
                task: task,
                toggleDone: (checkboxState) {
                  taskData.updateTask(task);
                },
              ),
              onPanUpdate: (details) {
                if (details.delta.dx > 0) {
                  taskData.deleteTask(task);
                }
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
