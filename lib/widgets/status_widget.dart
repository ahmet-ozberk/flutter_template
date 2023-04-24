import 'package:flutter/material.dart';

import '../services/api_services.dart';

class StatusWidget extends StatelessWidget {
  final bool? isEmpty;
  final bool? isError;
  final bool? isLoading;
  final Widget? child;
  final bool isAuth;

  const StatusWidget(
      {super.key, this.isEmpty, this.isError, this.child, this.isLoading, this.isAuth = false});

  @override
  Widget build(BuildContext context) {
    if (isAuth && !ApiServices.isAuth()) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie.asset(Assets.gif.pleaseLoginJSON).paddingAll(12),
            // TextButton(
            //   onPressed: () => Grock.toRemove(const LoginView(), type: NavType.bottomToTop),
            //   child: Text(
            //     "Giriş Yap",
            //     style: AppTextStyle.bigMedium(context).copyWith(
            //       color: AppColor.main,
            //     ),
            //   ),
            // ),
          ],
        ),
      );
    } else {
      if (isLoading == true) {
        return loadingWidget();
      } else if (isEmpty == true || isError == true) {
        return Center(
            // child: Lottie.asset(
            //   isEmpty == true ? Assets.gif.emptyJSON : Assets.gif.errorJSON,
            // ),
            );
      }
      return child ?? const SizedBox.shrink();
    }
  }
}

Widget loadingWidget() => Center(
    //child: Lottie.asset(Assets.gif.loadingJSON),
    );

Widget errorWidget() => Center(
    //child: Lottie.asset(Assets.gif.errorJSON),
    );
