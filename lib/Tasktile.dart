import 'package:flutter/material.dart';
import 'package:todoapp/Tasks.dart';

class Tasktiles  extends StatelessWidget {
  final String  task;
  final bool state;
  final Function CallBackCheck;
  final Function CallBackDelete;
  bool ischecked=false;
  Tasktiles({Key key, this.task, this.state, this.CallBackCheck, this.CallBackDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        CallBackDelete;
      },
      title:Text(task,style: TextStyle(decoration: ischecked?TextDecoration.lineThrough:null),),
      trailing:checkbox(ischecked: ischecked,CheckBoXtoggele: CallBackCheck(ischecked),)
    );
  }
}
class checkbox extends StatelessWidget {
  final ischecked;
  final Function CheckBoXtoggele;

  const checkbox({Key key, this.ischecked, this.CheckBoXtoggele}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: ischecked,
      onChanged:(value){
        CheckBoXtoggele();
      }
    );
  }
}

