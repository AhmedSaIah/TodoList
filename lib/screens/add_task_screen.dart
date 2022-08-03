import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle = "";

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.symmetric(horizontal: 20.0),
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
              onChanged: (newText){
                newTaskTitle = newText;
              },
              decoration: InputDecoration(
                hintText: 'Add task to your list',
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
              autofocus: true,
              cursorColor: Colors.transparent,
              textCapitalization: TextCapitalization.sentences,
            ),
            TextButton(onPressed: () {
              final task = Task(name: newTaskTitle, isDone: false);
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
