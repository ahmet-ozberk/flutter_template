import 'package:flutter/material.dart';

extension NumExtension on num {
  BorderRadiusGeometry get borderRadius => BorderRadius.circular(toDouble());
  BorderRadiusGeometry get borderRadiusTop => BorderRadius.only(
      topLeft: Radius.circular(toDouble()), topRight: Radius.circular(toDouble()));

  BorderRadiusGeometry get borderRadiusBottom => BorderRadius.only(
      bottomLeft: Radius.circular(toDouble()), bottomRight: Radius.circular(toDouble()));

  BorderRadiusGeometry get borderRadiusLeft => BorderRadius.only(
      topLeft: Radius.circular(toDouble()), bottomLeft: Radius.circular(toDouble()));

  BorderRadiusGeometry get borderRadiusRight => BorderRadius.only(
      topRight: Radius.circular(toDouble()), bottomRight: Radius.circular(toDouble()));

    Duration get days => Duration(days: toInt());
  Duration get hours => Duration(hours: toInt());
  Duration get seconds => Duration(seconds: toInt());
  Duration get milliseconds => Duration(milliseconds: toInt());
  Duration get microseconds => Duration(microseconds: toInt());
}
