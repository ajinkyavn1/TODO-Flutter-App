import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/DataChanngeNotify.dart';
import 'package:todoapp/TaskScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskDataChange(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:TaskScreen()
      ),
    );
  }
}
