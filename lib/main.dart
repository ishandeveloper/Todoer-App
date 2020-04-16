import 'package:flutter/material.dart';
import 'package:todoer/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoer/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            body1: TextStyle(fontFamily: 'Poppins'),
            button: TextStyle(fontFamily: 'Poppins'),
            
          ),
        ),
        home: TasksScreen(),
      ),
    );
  }
}
