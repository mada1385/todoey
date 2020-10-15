import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modules/tasklist.dart';
import 'package:todoey/modules/tasks.dart';

class Deletetask extends StatelessWidget {
  final int index;
  Deletetask(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Center(
          child: FlatButton(
            onPressed:(){
              Provider.of<P_task>(context,listen: false).delete(index);
              Navigator.pop(context);
              
            }  ,
            child: Icon(
              Icons.delete,
              color: Colors.white,
              size: 50,
            ),
            color: Colors.lightBlue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ));
  }
}
