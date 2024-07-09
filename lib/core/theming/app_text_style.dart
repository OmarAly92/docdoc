import 'package:docdoc/core/theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyle {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.spMin,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.spMin,
    fontWeight: FontWeight.bold,
    color: AppColor.mainBlue,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.spMin,
    fontWeight: FontWeight.normal,
    color: AppColor.gray,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
