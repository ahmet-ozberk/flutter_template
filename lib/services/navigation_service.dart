import 'package:flutter/material.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
  static final BuildContext context = navigationKey.currentContext!;

  static Future<dynamic> to(Widget route) {
    return navigationKey.currentState!.push(MaterialPageRoute(builder: (context) => route));
  }

  static Future<dynamic> toRemove(Widget route) {
    return navigationKey.currentState!
        .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => route), (route) => false);
  }

  static void goBack() {
    return navigationKey.currentState!.pop();
  }
}
