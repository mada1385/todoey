import 'package:flutter/cupertino.dart';

class Task {
  final String taskname;
  bool checkboxstate = false;
  final Function ischecked;

 
  Task({this.taskname, this.ischecked, this.checkboxstate = false});

  void toggledone() {
    checkboxstate =  !checkboxstate;
  }
}
