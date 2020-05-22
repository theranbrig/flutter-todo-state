import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/components/task_data.dart';
import 'package:todo_app/components/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              toggleCheckbox: (checkboxstate) {
                taskData.updateTask(task);
              },
              removeItem: () {
                taskData.removeTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
