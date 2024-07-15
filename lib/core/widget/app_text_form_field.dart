import 'package:docdoc/core/theming/app_color.dart';
import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    required this.hintText,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.suffixIconWidget,
    this.prefixIconWidget,
    this.obscureText = false,
    this.isPassword = false,
    this.contentPadding,
    this.backgroundColor,
    this.controller,
  })  : onPressedSuffixIcon = null,
        super(key: key);

  const AppTextFormField.password({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.onPressedSuffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.prefixIconWidget,
    this.contentPadding,
    this.backgroundColor,
    this.controller,
  })  : isPassword = true,
        suffixIconWidget = null,
        super(key: key);

  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final Color? backgroundColor;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final Widget? suffixIconWidget;
  final Widget? prefixIconWidget;
  final bool obscureText;
  final bool isPassword;
  final void Function()? onPressedSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: inputTextStyle ?? AppTextStyle.font14DarkBlueMedium,
      cursorColor: AppColor.mainBlue,
      keyboardType: isPassword ? TextInputType.visiblePassword : null,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? AppColor.moreLightGray,
        filled: true,
        isDense: true,
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 18,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColor.mainBlue,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColor.lighterGray,
                width: 1.3,
              ),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: AppColor.red,
                width: 1.3,
              ),
            ),
        hintStyle: hintStyle ?? AppTextStyle.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: buildSuffixIcon(),
        prefixIcon: prefixIconWidget,
      ),
    );
  }

  Widget? buildSuffixIcon() {
    if (isPassword) {
      return IconButton(
        onPressed: onPressedSuffixIcon,
        icon: Icon(
          obscureText ? Icons.visibility_off_rounded : Icons.visibility_rounded,
        ),
      );
    } else {
      return suffixIconWidget;
    }
  }
}
