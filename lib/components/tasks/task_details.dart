import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:intl/intl.dart';



class TaskDetails extends StatelessWidget {
  const TaskDetails({ Key? key, required this.task, required this.onTapTaskDetails}) : super(key: key);

  final Task task;
  final Function onTapTaskDetails;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print('clicked on task');
      },
    );
  }

  String refactoDateTime(DateTime dateTime) {
    DateFormat dateFormat = DateFormat('dd-MM-yyyy - kk:mm');
    String dateRefactored = dateFormat.format(dateTime);

    return dateRefactored;
  }
}

