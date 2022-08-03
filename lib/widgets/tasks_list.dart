import 'package:flutter/material.dart';
import 'package:todolist/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(
            longPressCallback: (){
              taskData.deleteTask(task);
            },
            isChecked: task.isDone,
            taskTitle: task.name,
            checkboxCallback: (checkboxState){
              taskData.updateTask(task);
            },
          );
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
