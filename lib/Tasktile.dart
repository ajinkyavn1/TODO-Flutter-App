import 'package:flutter/material.dart';

class Tasktiles extends StatelessWidget {
  final String  task;
  final bool state;

  const Tasktiles({Key key,@required this.task,@required this.state}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(task),
      trailing: Checkbox(
        value: state,
      ),
    );
  }
}

