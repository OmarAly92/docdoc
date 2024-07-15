import 'package:docdoc/core/theming/app_color.dart';
import 'package:docdoc/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

sealed class AppTextStyle {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.spMin,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.spMin,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.mainBlue,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.spMin,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColor.mainBlue,
  );

  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.spMin,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.darkBlue,
  );

  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.spMin,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.darkBlue,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.spMin,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.mainBlue,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.spMin,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.spMin,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.gray,
  );

  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.spMin,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.mainBlue,
  );

  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.spMin,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.gray,
  );

  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.spMin,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.lightGray,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.spMin,
    fontWeight: FontWeightHelper.medium,
    color: AppColor.darkBlue,
  );
  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.spMin,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
}
