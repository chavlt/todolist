import 'package:flutter/cupertino.dart';

class Task {
  int id = 0;
  String content = "";
  bool completed = false;
  DateTime createdAt = DateTime.now();

  Task(this.id, this.content, this.completed, this.createdAt);

  get status => null;
}