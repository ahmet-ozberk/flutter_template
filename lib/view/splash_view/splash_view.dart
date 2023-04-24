import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/extensions/context_extension.dart';

import '../home_view/home_view.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {

  @override
    void initState() {
      super.initState();
      Future.delayed(const Duration(seconds: 2), () {
        context.to(const HomeView());
      });
    }    

  @override
  Widget build(BuildContext context) {
    return Container(width: context.width(), height: context.height(), color: Colors.white);
  }
}
