import 'package:flutter/foundation.dart';

class Todo {
  final String title;
  bool isCompleted;

  Todo({
    required this.title,
    this.isCompleted = false,
  });
}

class TodoProvider extends ChangeNotifier {
  final List<Todo> _tasks = [];

  List<Todo> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(Todo(title: title));
    notifyListeners();
  }

  void toggleTaskCompletion(int index) {
    _tasks[index].isCompleted = !_tasks[index].isCompleted;
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
