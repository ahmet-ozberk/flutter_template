import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/model/base_model.dart';
import 'package:flutter_template/widgets/status_widget.dart';

import '../../controller/home_controller.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    final read = ref.read(homeLocationController);
    final watch = ref.watch(homeLocationController);
    return Scaffold(
      body: ref.read(homeApiDataController).when(
          data: (data) {
            final value = data as BaseModel;
            return StatusWidget(
              isAuth: false,
              isEmpty: value.data?.isEmpty,
              isError: false,
              isLoading: false,
              child: ListView(
                /// ...
              ),
            );
          },
          error: (err, stc) => errorWidget(),
          loading: () => loadingWidget()),
    );
  }
}
