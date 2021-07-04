
import 'package:flutter/material.dart';
import 'package:todoapp/Tasks.dart';

import 'AddTaskScreen.dart';
import 'LIstView.dart';

class TaskScreen extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TaskScreen> {
  List<Tasks> task=[
    Tasks(TaskTitle: "Egges"),
    Tasks(TaskTitle: "Computer repair"),
    Tasks(TaskTitle: "Do Array Problem "),
    Tasks(TaskTitle: "Do Tree Problems")
  ];

  var tasks=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "Add Task",
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>AddTaskScreen((TaskTitle){
            setState(() {
              task.add(Tasks(TaskTitle: TaskTitle));
            });
            Navigator.pop(context);
          }));
        },

      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30,right: 30,top: 60,bottom: 30),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius:30,
                  child: Icon(
                    Icons.list,size: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("TODOS",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                    color: Colors.white
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("${task.length} Tasks",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18
                ),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(25),
                      topRight: Radius.circular(25)
                  ),
              ),
              child: LIstView(task:task,)
            ),
          )
        ],
      ),
    );
  }
}
