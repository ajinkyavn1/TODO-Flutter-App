import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key  key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft:Radius.circular(25),
            topRight: Radius.circular(25)
        ),
      ),
      child: Column(
        children: [
          TextField()
        ],
      ),
    );
  }
}
