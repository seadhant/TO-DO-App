import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoflutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',textAlign: TextAlign.center,style: TextStyle(color: Colors.purple[700],fontSize: 30.0,fontWeight: FontWeight.w500),),
            SizedBox(height: 10.0,),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){newTaskTitle=newText;},
            ),
            SizedBox(height: 20.0,),
            FlatButton(
              child: Text('ADD',style: TextStyle(color: Colors.white),),
              color: Colors.purple[700],
              onPressed: (){
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
