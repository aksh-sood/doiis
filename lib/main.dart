import 'package:flutter/material.dart';
import 'package:doiiis/screens/tasks.dart';
import 'package:provider/provider.dart';
import 'package:doiiis/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
