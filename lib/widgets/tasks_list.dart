import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  // const TasksList({
  //   Key key,
  // }) : super(key: key);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ]; // each task has a Name and a isCompleted property

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (
        context,
        index,
      ) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
    // children: [
    //   TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
    //   TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,),
    //   TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,),
    // ],
  }
}
