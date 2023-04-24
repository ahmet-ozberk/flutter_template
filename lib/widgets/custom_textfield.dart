import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/extensions/list_extension.dart';

import '../utils/app_color.dart';
import '../utils/app_textstyle.dart';

class CustomTextField extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final int? maxLines;
  final int? minLines;
  final Widget? leading;
  final Widget? trailing;
  final bool isPassword;
  final bool isFilled;
  final Color fillColor;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Function()? onTap;
  final double borderRadius;
  final double? height;
  final void Function(String value)? onSubmitted;
  final void Function(String value)? onChanged;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField(
      {Key? key,
      this.hintText,
      this.controller,
      this.maxLines = 1,
      this.minLines,
      this.leading,
      this.trailing,
      this.keyboardType,
      this.textInputAction,
      this.isPassword = false,
      this.isFilled = true,
      this.onTap,
      this.fillColor = Colors.white,
      this.onSubmitted,
      this.onChanged,
      this.borderRadius = 12,
      this.focusNode,
      this.inputFormatters,
      this.height = 50})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextField(
        focusNode: widget.focusNode,
        controller: widget.controller,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        onTap: widget.onTap?.call(),
        onSubmitted: widget.onSubmitted,
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        obscureText: widget.isPassword ? isVisible : false,
        style: AppTextStyle.textField(context),
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: AppTextStyle.hintField(context),
          border: border(),
          enabledBorder: border(),
          focusedBorder: focusBorder(),
          filled: widget.isFilled,
          fillColor: widget.fillColor,
          prefixIcon: widget.leading,
          contentPadding: [12, 10].paddingSymmetric,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: Icon(
                    isVisible ? Icons.visibility : Icons.visibility_off,
                    color: AppColor.primary,
                  ),
                )
              : widget.trailing,
        ),
      ),
    );
  }

  OutlineInputBorder focusBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      borderSide: const BorderSide(
        color: AppColor.primary,
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      borderSide: const BorderSide(color: AppColor.textFieldBorder, width: 1),
    );
  }
}
