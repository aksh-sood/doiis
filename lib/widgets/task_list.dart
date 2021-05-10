import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:doiiis/models/task_data.dart';
import 'package:doiiis/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                checkBoxCallBack: (checkboxState) {
                  taskData.updateTask(task);
                },
                longPressCallBack: () {
                  taskData.deleteTask(task);
                },
                isChecked: taskData.tasks[index].isDone);
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
