import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:todolist/utilities/utilities.dart';

//notif() async {
//WidgetsFlutterBinding.ensureInitialized();
//AwesomeNotifications().initialize(null, [
//NotificationChannel(
//channelKey: 'key1',
//channelName: 'Prototype',
//channelDescription: "Notification Example",
//defaultColor: Color(0XFF9050DD),
//ledColor: Colors.white,
//playSound: true,
//enableLights: true,
//enableVibration: true,
//)
//]);
//runApp(notify());
//}

//notify() async {
//String timezone = await AwesomeNotifications().getLocalTimeZoneIdentifier();
//await AwesomeNotifications().createNotification(
//content: NotificationContent(
//id: 1,
//channelKey: 'key1',
//title: 'This is Notification Title',
//body: 'This is Notification Body',
//bigPicture:
//'https://d3avoj45mekucs.cloudfront.net/rojakdaily/media/jessica-chua/lifestyle/2017/may/doodle%204%20google/google.png?ext=.png',
//notificationLayout: NotificationLayout.BigPicture),
//schedule:
//NotificationInterval(interval: 1, timeZone: timezone, repeats: true),
//);
//}

createWaterReminderNotification(
    NotificationWeekAndTime notificationSchedule) async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'Scheduled_Channel',
      title: 'TITLE',
      body: 'BODY',
      notificationLayout: NotificationLayout.Default,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'MARK_DONE',
        label: 'Mark Done',
      ),
    ],
    schedule: NotificationCalendar(
      weekday: notificationSchedule.dayOfTheWeek,
      hour: notificationSchedule.timeOfDay.hour,
      minute: notificationSchedule.timeOfDay.minute,
      second: 0,
      millisecond: 0,
      repeats: true,
    ),
  );
}
