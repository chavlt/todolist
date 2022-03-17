import 'package:todolist/components/tasks/task_master.dart';
import 'package:todolist/models/task.dart';
import 'package:flutter/material.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key, required this.tasks, this.currentTask}) : super(key: key);

  final List<Task> tasks;
  final Task? currentTask;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Tasks"),
        ),
        body: Column(
          children: [
            Expanded(
              child: TaskMaster(tasks: tasks, onTapTaskMaster: (currentTask) {
                print("click depuis all tasks");
                //afficher la date de la tâche
                Text(currentTask.createdAt);
                //DateTime(currentTask.createdAt);
              },),
            ),
          ],
        ));
  }
}
