import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/DataChanngeNotify.dart';
import 'package:todoapp/Tasks.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String TaskTitle;
    return SingleChildScrollView(
      child: Container(
       // padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft:Radius.circular(25),
                topRight: Radius.circular(25)
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Add Task",style: TextStyle(
                fontSize:30,

                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
              ),textAlign: TextAlign.center,),
              SizedBox(height: 10,),
              TextField(
                onChanged: (value){
                  TaskTitle=value;
                },
                cursorColor: Colors.blueAccent,
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              FlatButton(
                  onPressed: (){
                    Provider.of<TaskDataChange>(context,listen: false).addTask(TaskTitle);
                    Navigator.pop(context);
                  },
                  child:Text("Add"),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
