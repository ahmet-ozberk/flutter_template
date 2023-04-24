import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/string_data.dart';
import 'package:flutter_template/services/navigation_service.dart';
import 'package:flutter_template/services/scaffold_service.dart';
import 'package:flutter_template/view/splash_view/splash_view.dart';

void main() => runApp(const ProviderScope(child: TemplateApp()));

class TemplateApp extends StatelessWidget {
  const TemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringData.appName,
      navigatorKey: NavigationService.navigationKey,
      scaffoldMessengerKey: ScaffoldService.scaffoldKey,
      home: const SplashView(),
    );
  }
}
