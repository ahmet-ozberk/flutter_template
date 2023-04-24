import 'package:flutter/material.dart';

class ScaffoldService {
  static final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  static GlobalKey<ScaffoldMessengerState> get scaffoldKey => _scaffoldKey;

  static void showSnackBar(String message) {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(message)));
  }
}
