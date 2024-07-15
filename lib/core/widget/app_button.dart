import 'package:docdoc/core/theming/app_color.dart';
import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.buttonText,
    this.textStyle,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.borderRadius,
    this.buttonWidth,
    this.buttonHeight,
    this.onPressed,
  }) : super(key: key);

  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColor.mainBlue,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 13,
          vertical: verticalPadding ?? 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 18),
        ),
        fixedSize: Size(
          buttonWidth ?? double.maxFinite,
          buttonHeight ?? 55,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle ?? AppTextStyle.font16WhiteSemiBold,
      ),
    );
  }
}
