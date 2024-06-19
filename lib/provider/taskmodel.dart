import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';

class TaskModel extends ChangeNotifier {
  final List<Task> _todotasks = [
    Task("task 1", false, 'create model',DateTime.now().add(Duration(days: 3))),
    Task("task 2", false, 'add crud',DateTime.now().subtract(Duration(days: 5))),

  ];

  List<Task> get todotasks => _todotasks;


}
