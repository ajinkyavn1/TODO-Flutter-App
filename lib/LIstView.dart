import 'package:flutter/material.dart';

import 'Tasktile.dart';

class LIstView extends StatelessWidget {
  const LIstView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Tasktiles(task: "Task1",state: false,),
        Tasktiles(task: "Task1",state: true,),
        Tasktiles(task: "Task1",state: false,),
        Tasktiles(task: "Task1",state: true,),
      ],
    );
  }
}
