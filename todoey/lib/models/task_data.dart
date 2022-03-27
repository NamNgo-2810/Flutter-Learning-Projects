import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskName) {
    tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

}