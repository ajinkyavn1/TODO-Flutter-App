import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key  key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                cursorColor: Colors.blueAccent,
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              FlatButton(
                  onPressed: (){},
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
