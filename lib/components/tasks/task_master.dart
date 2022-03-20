import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_preview.dart';
import 'package:todolist/models/task.dart';

class TaskMaster extends StatelessWidget {
  const TaskMaster({Key? key, required this.tasks, required this.onTapTaskMaster}) : super(key: key);

  final List<Task> tasks;
  final Function onTapTaskMaster;

/*   void onTap(Task task){
    print(task.createdAt);
  } */ 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) => TaskPreview(
        task: tasks[index],
        onTapPreview: (task) {
          onTapTaskMaster(task);
        },
      ),
    );
  }
}
