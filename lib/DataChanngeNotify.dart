import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:todoapp/Tasks.dart';


class TaskDataChange extends ChangeNotifier{
  List<Tasks> _task=[
  ];
  UnmodifiableListView<Tasks>get tasks{
    return UnmodifiableListView(_task);
  }
  int getTaskcount(){
    return _task.length;
  }
  void addTask(String newTask){
    final ta=Tasks(TaskTitle: newTask);
    _task.add(ta);
    notifyListeners();
  }
  void UpdateTask(Tasks task){
    Tasks().ToggleDone();
    notifyListeners();
  }
  void DeleteTask(int index)
  {
    //_task.remove()
  }
}