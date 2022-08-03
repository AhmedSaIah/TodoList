import 'package:flutter/foundation.dart';
import 'package:todolist/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy food', isDone: false),
    Task(name: 'Drink water', isDone: false),
  ];

  int get taskCount {
    return tasks.length;
  }
}
