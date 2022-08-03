import 'package:flutter/material.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/widgets/tasks_list.dart';
import 'package:todolist/screens/add_task_screen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen(),
            );
          },
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 70, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'TODOList',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ));
  }
}

