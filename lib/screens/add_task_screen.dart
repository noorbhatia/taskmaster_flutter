import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/task_data.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add a task in Taskmaster',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTask = newText;
              },
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Data>(context, listen: false).newTextTask(newTask);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(fontSize: 20.0),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFC5B3F),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Color(0xFF3376FF).withOpacity(0.5),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0))),
      ),
    );
  }
}
