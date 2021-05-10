import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  AddPage(this.addTaskCallback);
  final Function addTaskCallback;
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
        color: Color(0xFF757575),
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
                color: Colors.lightBlueAccent,
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
              padding: const EdgeInsets.symmetric(horizontal: 30),
              // ignore: deprecated_member_use
              child: RaisedButton(
                  autofocus: true,
                  onPressed: () {
                    addTaskCallback(newTask);
                  },
                  child: Text('Add Task'),
                  textColor: Colors.white,
                  color: Colors.lightBlueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
