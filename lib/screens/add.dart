import 'package:flutter/material.dart';
import 'package:doiiis/models/task_data.dart';
import 'package:provider/provider.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 0.5),
            blurRadius: 30,
          ),
        ],
        color: Color(0xFF878787),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              'Add your doiii',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'OpenSansCondensed',
                color: Colors.green,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                onChanged: (newText) {
                  newTask = newText;
                },
                decoration: InputDecoration(
                  hintText: "Enter the Task",
                  hintStyle: TextStyle(
                    fontFamily: 'OpenSansCondensed',
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 50,
              ),
              // ignore: deprecated_member_use
              child: RaisedButton(
                  autofocus: true,
                  onPressed: () {
                    newTask == null
                        ? null
                        : Provider.of<TaskData>(context, listen: false)
                            .addTask(newTask);
                    Navigator.pop(context);
                  },
                  child: Text('Add Task'),
                  textColor: Colors.white,
                  color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
