import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.isChecked, this.taskTitle, this.toggleCheckbox});
  final String taskTitle;
  final bool isChecked;
  final Function toggleCheckbox;

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
        ));
  }
}
