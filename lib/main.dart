import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/pages/home_pages.dart';

import 'navigation/navigationpage.dart';

void main() {
  AwesomeNotifications().initialize(
    'resource://drawable/res_notification_app_icon',
    [
      NotificationChannel(
        channelKey: 'Scheduled_Channel',
        channelName: 'Scheduled Notifications',
        defaultColor: Colors.blue,
        locked: true,
        importance: NotificationImportance.High,
      ),
    ],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/navigationPage': (context) => NavigationPage()},
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
