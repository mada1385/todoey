// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/bootomsheet.dart';
import 'package:todoey/components/tasklist.dart';
// import 'package:todoey/components/tasktile.dart';
import 'package:todoey/modules/tasklist.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Addtask(),
            isScrollControlled: true,
          );
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 120, left: 50, bottom: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(
                      Icons.list,
                      size: 40,
                      color: Colors.lightBlue,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Todoey",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  Provider.of<P_task>(context).listoftasks.length.toString() +
                      " tasks",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Tasklist(),
              padding: EdgeInsets.only(left: 40, bottom: 30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
            ),
          )
        ],
      ),
    );
  }
}
