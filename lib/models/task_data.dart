import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks {
    return _tasks;
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  int checkedTasks()
  {
    int sum = 0;
    for(var x in _tasks)
      {
        if (x.isDone )
          {
            sum++;
          }
      }
    return sum;
  }
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
