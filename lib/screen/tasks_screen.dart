import 'package:flutter/material.dart';
import 'package:todoflutter/widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task_data.dart';


class TaskScreen extends StatefulWidget {

//  Widget buildButtomSheet (BuildContext context){
//    return Container(
//      decoration: BoxDecoration(
//        color: Colors.white,
//      ),
//    );
//  }
//
//  @override
//  _TaskScreenState createState() => _TaskScreenState();
//}
//
//class _TaskScreenState extends State<TaskScreen> {
//
//
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.purple[700],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                ),
              ));
        },
        backgroundColor: Colors.purple[700],
        child: Icon(Icons.add,color: Colors.white,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 40.0,bottom: 20.0,right: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45.0,
                  child: Icon(Icons.list,color: Colors.purple[700],size: 70.0,),
                ),
                SizedBox(height: 10.0,),
                Text('sea Tasks',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w500,color: Colors.white),),
                Text('${Provider.of<TaskData>(context).tasks.length} Task',
                  style: TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.w300),)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}
