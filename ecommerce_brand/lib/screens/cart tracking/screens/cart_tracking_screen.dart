import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/screens/cart%20tracking/widgets/info_current_package_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartTrackingScreen extends StatefulWidget {
  const CartTrackingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CartTrackingScreen();
  }
}

class _CartTrackingScreen extends State<CartTrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhiteBlur,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Constant.paddingHorizontal,
            vertical: Constant.paddingVertical),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.close),
                ),
                Expanded(child: Container()),
                Assets.iconsIcFile.svg(color: Colors.black),
                Expanded(child: Container()),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Container(),
                )
              ],
            ),
            const InfoCurrentPackageWidget(),
          ],
        ),
      )),
    );
  }
}
