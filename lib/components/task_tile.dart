import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/components/task_data.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.isChecked, this.taskTitle, this.toggleCheckbox, this.removeItem});
  final String taskTitle;
  final bool isChecked;
  final Function toggleCheckbox;
  final Function removeItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
      onLongPress: removeItem,
    );
  }
}
