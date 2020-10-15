import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modules/tasks.dart';

class P_task extends ChangeNotifier {
  List<Task> listoftasks = [
    // Task(taskname: "get milk"),
    // Task(taskname: "get bread"),
    // Task(taskname: "fuck u"),
    // Task(taskname: "hi")
  ];
  void addtask(String taskname) {
    print(taskname);
    final Task task = Task(taskname: taskname);
    listoftasks.add(task);
    notifyListeners();
    print(listoftasks);
  }

  void changestate(int index) {
    listoftasks[index].toggledone();
    notifyListeners();
  }

  void delete(int index) {
    listoftasks.removeAt(index);
    notifyListeners();
  }
}
