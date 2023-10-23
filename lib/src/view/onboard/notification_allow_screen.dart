import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationAllowScreen extends StatefulWidget {
  const NotificationAllowScreen({Key? key}) : super(key: key);

  @override
  State<NotificationAllowScreen> createState() => _NotificationAllowScreenState();
}

class _NotificationAllowScreenState extends State<NotificationAllowScreen> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed){
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
