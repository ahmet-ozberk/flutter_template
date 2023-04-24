import 'package:flutter/material.dart';

extension ListExtension on List<num> {
  EdgeInsetsGeometry get paddingLTRB => EdgeInsets.fromLTRB(
      this[0].toDouble(), this[1].toDouble(), this[2].toDouble(), this[3].toDouble());

  EdgeInsetsGeometry get paddingSymmetric =>
      EdgeInsets.symmetric(horizontal: this[0].toDouble(), vertical: this[1].toDouble());
      
}
