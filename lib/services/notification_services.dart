import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class NotifyHelper {
  FlutterLocalNotificationsPlugin fLNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  initializeNotification() async {
    //tz.initializeTimeZones();
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      requestSoundPermission: false,
      requestAlertPermission: false,
      requestBadgePermission: false,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('appicon');

    final InitializationSettings initializationSettings =
        InitializationSettings(
      iOS: initializationSettingsIOS,
      android: initializationSettingsAndroid,
    );
    await fLNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: selectNotification,
    );
  }

  Future onDidReceiveLocalNotification(
      int? id, String? title, String? body, String? payload) async {
    Get.dialog(
      const Text('Welcome to Task Manager'),
    );
  }

  Future selectNotification(String? payload) async {
    if (payload != null) {
      print('notification payload: $payload');
    } else {
      print('notification Done');
    }
    Get.to(
      () => Container(
        color: Colors.blueGrey,
      ),
    );
  }

  void requestIOSPermissions() {
    fLNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  displayNotification({required String? title, required String? body}) async {
    print("doing test");
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
        'your channel id', 'your channel name',
        importance: Importance.max, priority: Priority.high);
    var iOSPlatformChannelSpecifics = const IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    await fLNotificationsPlugin.show(
      0,
      'You change your theme',
      'You changed your theme back !',
      platformChannelSpecifics,
      payload: 'Default_Sound',
    );
  }
}
