import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:intl/intl.dart';



class TaskDetails extends StatelessWidget {
  const TaskDetails({ Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const Text("task details")

       // mettre le created at et le statut de la task
      ],
    );
  }

  String refactoDateTime(DateTime dateTime) {
    DateFormat dateFormat = DateFormat('dd-MM-yyyy - kk:mm');
    String dateRefactored = dateFormat.format(dateTime);

    return dateRefactored;
  }
}

