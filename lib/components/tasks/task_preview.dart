import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';

class TaskPreview extends StatelessWidget {
  const TaskPreview({ Key? key, required this.task, required this.onTapPreview }) : super(key: key);

  final Task task;
  final Function onTapPreview;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.content),
      tileColor : task.completed == true?
        Colors.deepOrange[50]
        :Colors.deepOrange[100],
      hoverColor: Colors.deepOrange[300],
      onTap: () {
        onTapPreview(task);
      },
    );
  }
}











/*
@override
  Widget build(BuildContext context) {
    return Text(task.content);
    //afficher task.completed true ou false
    //stylisé les tasks qui sont a true d'une manière et ceux qui sont à false d'une autre manière
  }



@override
  Widget build(BuildContext context) {
    return Text(task.content);
  }




  return Scaffold(
        appBar: AppBar(
          title: const Text("One task"),
        ),
        body: Column(
          children: [
            Text(task.content),

            //(task.completed),
          ],
        )); 
*/