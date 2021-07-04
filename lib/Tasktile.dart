import 'package:flutter/material.dart';

class Tasktiles extends StatefulWidget {
  final String  task;
  final bool state;

  const Tasktiles({Key key,@required this.task,@required this.state}) : super(key: key);

  @override
  _TasktilesState createState() => _TasktilesState();
}

class _TasktilesState extends State<Tasktiles> {
  bool ischecked=false;
  void CheckBoxState(bool CheckBoxState){
    setState(() {
      ischecked=CheckBoxState;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(widget.task,style: TextStyle(decoration: ischecked?TextDecoration.lineThrough:null),),
      trailing:checkbox(ischecked: ischecked,CheckBoXtoggele: CheckBoxState,)
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
      value: ischecked,
      onChanged: CheckBoXtoggele,
    );
  }
}

