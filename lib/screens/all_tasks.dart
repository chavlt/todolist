import 'package:todolist/components/tasks/task_details.dart';
import 'package:todolist/components/tasks/task_master.dart';
import 'package:todolist/models/task.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/data/tasks.dart' as data;

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key, required this.tasks}) : super(key: key);

  final List<Task> tasks;
  

  @override
  State<AllTasks> createState() => _AllTasksState();

}

class _AllTasksState extends State<AllTasks> {

  Task? currentTask;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Tasks"),
        ),
        body: Column(
          children: [
            currentTask != null ?
            TaskDetails(task: currentTask!) :
            Container(),
            Expanded(
              child: TaskMaster(tasks: widget.tasks, onTapTaskMaster: (Task task) {
                setState(() {
                  currentTask = task;
                });
                print(currentTask!.createdAt);
                // //afficher la date de la tâche
                // Text(DateFormat('dd-MM-yyyy - kk:mm').format(currentTask!.createdAt));
                // //DateTime(currentTask.createdAt);
              },),
            ),
          ],
        ));
  }
}
