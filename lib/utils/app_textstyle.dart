import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTextStyle {
  static TextStyle appBarTitle(context) => Theme.of(context)
      .textTheme
      .bodyMedium!
      .copyWith(fontWeight: FontWeight.bold, fontSize: 16, fontFamily: "Poppins");

  static TextStyle bold12(context) => Theme.of(context)
      .textTheme
      .bodyMedium!
      .copyWith(fontWeight: FontWeight.bold, fontSize: 12, fontFamily: "Poppins");

  static TextStyle bold16(context) => Theme.of(context)
      .textTheme
      .bodyMedium!
      .copyWith(fontWeight: FontWeight.bold, fontSize: 12, fontFamily: "Poppins");

  static TextStyle textField(context) => Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: AppColor.appbarTitle,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle hintField(context) => Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: AppColor.appbarTitle.withOpacity(0.7),
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle button(context) => Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: Colors.white.withOpacity(0.8),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
}
