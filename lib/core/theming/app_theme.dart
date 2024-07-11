import 'package:docdoc/core/theming/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData light() {
    return ThemeData(
      primaryColor: AppColor.mainBlue,
      scaffoldBackgroundColor: AppColor.white,
    );
  }

  static ThemeData dark() {
    return ThemeData();
  }
}
