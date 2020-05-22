import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_app/components/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: 'Buy Cheese')];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String name) {
    final task = Task(name: name);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
