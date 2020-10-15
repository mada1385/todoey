import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/deletesheet.dart';
import 'package:todoey/components/tasktile.dart';
import 'package:todoey/modules/tasklist.dart';
import 'package:todoey/modules/tasks.dart';

class Tasklist extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onLongPress: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Deletetask(index),
              isScrollControlled: true,
            );
          },
          child: ListTile(
            leading: Text(
              Provider.of<P_task>(context).listoftasks[index].taskname,
              style: TextStyle(
                  fontSize: 25,
                  decoration: Provider.of<P_task>(context)
                          .listoftasks[index]
                          .checkboxstate
                      ? TextDecoration.lineThrough
                      : null),
            ),
            trailing: Checkbox(
              value:
                  Provider.of<P_task>(context).listoftasks[index].checkboxstate,
              onChanged:(value){Provider.of<P_task>(context,listen: false).changestate(index);},
                  
              activeColor: Colors.lightBlue,
            ),
          ),
        );
      },
      itemCount: Provider.of<P_task>(context).listoftasks.length,
    );
  }
}
