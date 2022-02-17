import 'package:clock_app/enums.dart';
import 'package:flutter/material.dart';
import 'menu_info.dart';
import 'alarmlist.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock,
      title: 'Clock', icon: Icons.access_time),
  MenuInfo(MenuType.alarm,
      title: 'Alarm', icon: Icons.alarm),
];

List<AlarmList> alarms = [
  AlarmList(DateTime.now().add(Duration(hours: 1)), description: 'Alarm'),
  AlarmList(DateTime.now().add(Duration(hours: 2)), description: 'Wake-up'),
];
