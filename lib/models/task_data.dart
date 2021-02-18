import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart'; // a subset of material.dart
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get tasksCount {
    return tasks.length;
  }
}
