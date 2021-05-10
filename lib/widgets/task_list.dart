import 'package:flutter/material.dart';
import 'package:doiiis/widgets/task_tile.dart';
import 'package:doiiis/models/task.dart';

class TasksList extends StatefulWidget {
  TasksList({this.tasks});
  final List<Task> tasks;

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            checkBoxCallBack: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleCheck();
              });
            },
            isChecked: widget.tasks[index].isDone);
      },
      itemCount: widget.tasks.length,
    );
  }
}
