import 'package:flutter/material.dart';
import 'package:flutter_template/extensions/num_extension.dart';
import 'package:flutter_template/utils/app_color.dart';

import '../utils/app_textstyle.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final bool isLoading;
  final Color bgColor;
  const CustomButton({
    Key? key,
    this.text = "Buton",
    this.onPressed,
    this.isLoading = false,
    this.bgColor = AppColor.primary,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: GestureDetector(
        onTap: onPressed == null ? null : () => onPressed?.call(),
        child: Container(
          width: double.maxFinite,
          height: 52,
          decoration: BoxDecoration(
            color: onPressed == null ? bgColor.withOpacity(0.6) : bgColor,
            borderRadius: 12.borderRadius,
          ),
          child: Center(
            child: Text(text, style: AppTextStyle.button(context)),
          ),
        ),
      ),
      secondChild: const Center(child: CircularProgressIndicator()),
      crossFadeState: isLoading ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    );
  }
}
