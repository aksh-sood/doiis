import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.isChecked,
      this.longPressCallBack,
      this.taskTitle,
      this.checkBoxCallBack});
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack, longPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.green,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
