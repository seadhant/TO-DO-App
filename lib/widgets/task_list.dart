import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task_data.dart';


class TaskList extends StatelessWidget {

//  TaskList({this.tasks});
//  final List<Task> tasks ;
//
//  @override
//  _TaskListState createState() => _TaskListState();
//}
//
//class _TaskListState extends State<TaskList> {



  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(
              taskTile: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState){
                taskData.updateTask(task);
//      setState(() {
//        Provider.of<TaskData>(context).tasks[index].toggleDone() ;
//      });
              },
            longPressCallBack: (){
                taskData.deleteTask(task);
            },
          );
        },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}
