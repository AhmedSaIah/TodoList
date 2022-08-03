import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle = "";

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text('Add Task', style: TextStyle(fontSize: 30.0),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Add task to your list',
                border: InputBorder.none,
              ),
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.transparent,
              textCapitalization: TextCapitalization.sentences,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            TextButton(onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: Text(
              'Done',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(5.0),
                padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
