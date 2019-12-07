import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EasyNavigationBarItem {
  EasyNavigationBarItem(
      {@required this.title,
      @required this.icon,
      this.color,
      this.iconActive,
      @required this.widget});

  final String title;
  final IconData icon;
  final IconData iconActive;
  final MaterialColor color;
  final Widget widget;
}
