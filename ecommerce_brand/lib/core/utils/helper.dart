import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/widgets/indicatorCustom.dart';
import 'package:ecommerce_brand/core/utils/widgets/popUp_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

animationToastLoadingFail(
    {context,
    String? message,
    String? title,
    int? timeAwait,
    bool isAwait = true}) async {
  if (isAwait) {
    SmartDialog.showLoading(
      maskWidget: Container(color: AppColors.backgroundWhiteBlur20),
      builder: (context) => const IndicatorCustom(
        color: AppColors.primary,
      ),
    );
    await Future.delayed(Duration(seconds: timeAwait ?? 1));
    SmartDialog.dismiss();
  }

  Popup(
    title: title ?? 'Oops!',
    message:
        message ?? "Looks like there has been a mistake please check later!",
    leftButton: 'Cancel',
    rightButton: 'OK',
    onTapLeftButton: () {},
    onTapRightButton: () {},
  ).show(context);
}

showToast({String? message, String? title}) {
  Get.snackbar(title ?? "Oops!", message ?? "Something went wrong",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(milliseconds: 1600),
      backgroundColor: AppColors.black,
      margin: const EdgeInsets.only(bottom: 50, left: 12, right: 12),
      colorText: Colors.white);
}
