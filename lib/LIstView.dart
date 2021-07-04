import 'package:flutter/material.dart';
import 'package:todoapp/Tasks.dart';

import 'Tasktile.dart';

class LIstView extends StatefulWidget {
 final List<Tasks> task;

  const LIstView({Key key, this.task}) : super(key: key);

  @override
  _LIstViewState createState() => _LIstViewState();
}

class _LIstViewState extends State<LIstView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){

        return  Tasktiles(task: widget.task[index].TaskTitle,state: widget.task[index].isdone,);
      },
      itemCount: widget.task.length,
    );
  }
}
