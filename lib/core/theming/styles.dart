import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_disease_app/core/theming/colors.dart';
import 'package:plant_disease_app/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeightHelper.bold, color: Colors.black);

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.mainGreen);
  static TextStyle font24BlueBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.mainGreen);
  static TextStyle font13GrayRegular = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.bold, color: ColorsManager.gray);

  static TextStyle font13BlueRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManager.mainGreen);

  static TextStyle font13DarkBlueRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManager.darkBlue);

  static TextStyle font13DarkBlueMedium = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.darkBlue);
  static TextStyle font15DarkBlueMedium = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.darkBlue);

  static TextStyle font13BlueSimeBold = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManager.mainGreen);

  static TextStyle font14BlueSemibold = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManager.mainGreen);

  static TextStyle font14GrayRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManager.gray);

  static TextStyle font14LightGrayRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManager.lighterGray);

  static TextStyle font14DarkBlueMeduim = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.darkBlue);

  static TextStyle font16whiteSMedium = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.medium,
      color: Colors.white);

  static TextStyle font16whiteSemiBold = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white);
}
