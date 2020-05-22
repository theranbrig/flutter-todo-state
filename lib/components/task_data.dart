import 'package:flutter/material.dart';
import 'package:todo_app/components/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'Buy Cheese')];

  int get taskCount {
    return tasks.length;
  }
}
