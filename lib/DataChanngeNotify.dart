import 'package:flutter/foundation.dart';
import 'package:todoapp/Tasks.dart';


class TaskDataChange extends ChangeNotifier{
  List<Tasks> task=[
    Tasks(TaskTitle: "Egges"),
    Tasks(TaskTitle: "Computer repair"),
    Tasks(TaskTitle: "Do Array Problem "),
    Tasks(TaskTitle: "Do Tree Problems")
  ];
  int getTaskcount(){
    return task.length;
  }
}