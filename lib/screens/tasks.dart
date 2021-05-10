import 'package:flutter/material.dart';
import 'package:doiiis/widgets/task_list.dart';
import 'package:doiiis/screens/add.dart';
import 'package:provider/provider.dart';
import 'package:doiiis/models/task_data.dart';

// ignore: must_be_immutable

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          showModalBottomSheet(
            // isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                child: AddPage(),
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
              ),
            ),
          );
        },
        child: Icon(Icons.add, size: 35),
      ),
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0, top: 30),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list_rounded,
                    color: Colors.green,
                    size: 60,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Text(
                  "Doiiis",
                  style: TextStyle(
                      fontFamily: 'Itim',
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Text(
                  "${Provider.of<TaskData>(context).tasks.length} tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'OpenSansCondensed'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.5),
                        blurRadius: 30,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 35, top: 50.0, right: 35),
                    child: Provider.of<TaskData>(context).tasks.length == 0
                        ? Center(
                            child: Text(
                            'There are no doiiis',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'OpenSansCondensed'),
                          ))
                        : TasksList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
