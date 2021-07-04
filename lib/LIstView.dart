import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/DataChanngeNotify.dart';
import 'package:todoapp/Tasks.dart';

import 'Tasktile.dart';

class LIstView extends StatefulWidget {


  @override
  _LIstViewState createState() => _LIstViewState();
}

class _LIstViewState extends State<LIstView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDataChange>(
      builder: (context,TaskData,Child){
        return  ListView.builder(
          itemBuilder: (context,index){

            return  Tasktiles(
              task: TaskData.task[index].TaskTitle,
              state:TaskData.task[index].isdone,);
          },
          itemCount: TaskData.getTaskcount(),
        );
      },

    );
  }
}
