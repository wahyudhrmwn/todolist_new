import 'package:flutter/material.dart';
import 'package:todolist/notification/notify.dart';
import 'package:todolist/utilities/utilities.dart';

class TodoItem extends StatefulWidget {
  final String title;
  final Future<void> Function() onPressedTwo;
  const TodoItem({
    Key? key,
    required this.onPressedTwo,
    required this.title,
  }) : super(key: key);
  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDone = !isDone;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          SizedBox(
            height: 10,
            width: 1000,
          ),
          Text(widget.title),
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.blue,
            onPressed: () async {
              NotificationWeekAndTime? pickedSchedule =
                  await pickSchedule(context);

              if (pickedSchedule != null) {
                createWaterReminderNotification(pickedSchedule);
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
        ]),
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        //decoration: BoxDecoration(
        //color: Colors.white,
        //borderRadius: BorderRadius.circular(10),
        //),
        //child: IconButton(
        //icon: Icon(Icons.notifications),
        //color: Colors.blue,
        //onPressed: () async {
        //NotificationWeekAndTime? pickedSchedule =
        //await pickSchedule(context);

        //if (pickedSchedule != null) {
        //createWaterReminderNotification(pickedSchedule);
        //}

        //AwesomeNotifications()
        //.actionStream
        //.listen((receivedNotification) {
        //Navigator.of(context).pushNamed(
        //'/navigationPage',
        //);
        //});
        //}),
      ),
    );
  }
}
