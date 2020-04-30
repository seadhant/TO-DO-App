import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile({this.isChecked=false,this.taskTile,this.checkboxCallback,this.longPressCallBack});
  final bool isChecked;
  final String taskTile;
  final Function checkboxCallback;
  final Function longPressCallBack;

//  @override
//  _TaskTileState createState() => _TaskTileState();
//}
//
//class _TaskTileState extends State<TaskTile> {
//
//
//  void checkboxCallback (bool checkboxState){
//    setState(() {
//        isChecked = checkboxState;
//      });
//  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(taskTile,
      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(value: isChecked,
        activeColor: Colors.purple[700],
        onChanged: (newValue){
        checkboxCallback(newValue);
        },
      ),
    );
  }
}
//
//class TaskCheckBox extends StatelessWidget {
//
//  TaskCheckBox({this.checkboxState,this.toggleCheckboxState});
//  final bool  checkboxState;
//  final Function toggleCheckboxState;
//
//  @override
//  Widget build(BuildContext context) {
//    return
//  }
//}
