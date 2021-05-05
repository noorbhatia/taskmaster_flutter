import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'models/task.dart';

class Data extends ChangeNotifier {
  List<Task> _tasks = [];

  void newTextTask(String newText) {
    _tasks.add(Task(name: newText));
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount => _tasks.length;

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
