import 'package:flutter/material.dart';
import 'package:flutter_template/services/navigation_service.dart';

extension ContextExtension on BuildContext {
  double width() => MediaQuery.of(this).size.width;
  double height() => MediaQuery.of(this).size.height;
  double dynamicHeight(double value) => width() * value;
  double dynamicWidth(double value) => height() * value;
  
  Future<dynamic> to(Widget route) {
    return NavigationService.to(route);
  }

  Future<dynamic> toRemove(Widget route) {
    return NavigationService.toRemove(route);
  }

  void goBack() {
    return NavigationService.goBack();
  }
}
