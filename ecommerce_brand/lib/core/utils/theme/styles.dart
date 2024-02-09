import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static const borderRadius = BorderRadius.all(Radius.circular(3));
  static const paddingScreen = EdgeInsets.symmetric(
      horizontal: Constant.paddingHorizontal,
      vertical: Constant.paddingVertical);
  static const inputStyle = InputDecoration(
    filled: true,
    fillColor: AppColors.backgroundPrimary,
    border: OutlineInputBorder(borderRadius: borderRadius),
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  );

  static const buttonNormalStyle = ButtonStyle(
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: borderRadius)),
      textStyle: MaterialStatePropertyAll(AppTypography.headerPrimary),
      backgroundColor: MaterialStatePropertyAll(AppColors.primary),
      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
          vertical: Constant.paddingVertical,
          horizontal: Constant.paddingHorizontal)));

  static const borderSideFloatingActionButton = BoxDecoration(
      color: Color.fromARGB(255, 211, 210, 210),
      borderRadius: BorderRadius.all(Radius.circular(12)));
  static const borderComponentFloatingActionButton = BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.all(Radius.circular(12)));
}
