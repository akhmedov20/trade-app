import 'dart:ffi';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:trade_app/src/view/main/main_screen.dart';
import 'package:trade_app/src/view/onboard/notification_allow_screen.dart';
import 'package:trade_app/src/view/onboard/onboard_screen.dart';
import 'package:trade_app/src/view/top/top_screen.dart';
import 'package:trade_app/src/view/trade/practise.dart';
import 'package:trade_app/src/view/trade/trade_screen.dart';

void main() {
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests'
    )
  ],
      channelGroups: [
        NotificationChannelGroup(
            channelGroupKey: 'basic_channel_group',
            channelGroupName: 'Basic group')
      ],
    debug: true
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: const Color(0xff121629),
      title: 'Trading App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TradeScreen()
    );
  }
}
