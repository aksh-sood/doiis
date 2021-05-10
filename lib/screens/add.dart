import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Add your doii',
              style: TextStyle(
                fontFamily: 'OpenSansCondensed',
                color: Colors.lightBlueAccent,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter the Task",
                  hintStyle: TextStyle(
                    fontFamily: 'OpenSansCondensed',
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            // ignore: deprecated_member_use
            RaisedButton(
                onPressed: () {},
                child: Text('Add Task'),
                textColor: Colors.white,
                color: Colors.lightBlueAccent),
          ],
        ),
      ),
    );
  }
}
