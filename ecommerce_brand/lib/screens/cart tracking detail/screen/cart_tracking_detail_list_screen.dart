import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/divider_stepper_custom.dart';
import 'package:ecommerce_brand/domain/controller/cart_tracking_detail_controller.dart';
import 'package:ecommerce_brand/screens/cart%20tracking%20detail/widgets/stepper_1_widget.dart';
import 'package:ecommerce_brand/screens/cart%20tracking%20detail/widgets/stepper_2_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CartTrackingDetailListScreen extends StatelessWidget {
  CartTrackingDetailListScreen({super.key, required this.image});
  dynamic image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: AppStyles.paddingScreen,
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Icons.arrow_back)),
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  child: const Text(
                    "Order Tracking",
                    style: AppTypography.header,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              height: 180,
              margin: const EdgeInsets.only(top: 45, bottom: 20),
              child: ClipRRect(
                borderRadius: AppStyles.borderRadiusImage1,
                child: Assets.imagesMockImage01.image(),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: const Text(
                "Bershka Mom Jeans",
                style: AppTypography.bodyLarge22,
              ),
            ),
          ),
          const Center(
            child: Text(
              "26 - S | Blue | ID: 0723291",
              style: AppTypography.bodyNormal,
            ),
          ),
          Container(
            padding: AppStyles.paddingScreen,
            margin: const EdgeInsets.symmetric(vertical: 28),
            child: Row(
              children: [
                DividerSteppeCustomize.dotStepperBefore(),
                DividerSteppeCustomize.rulerBefore(),
                DividerSteppeCustomize.dotStepperBefore(),
                DividerSteppeCustomize.rulerBefore(),
                DividerSteppeCustomize.dotStepperBefore(),
                DividerSteppeCustomize.rulerAfter(),
                DividerSteppeCustomize.dotStepperAfter(),
              ],
            ),
          ),
          Obx(
            () => AnimatedContainer(
                padding: AppStyles.paddingScreen,
                duration: const Duration(microseconds: 500),
                child: const StepperFirstWidget()),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 18),
            padding: const EdgeInsets.symmetric(vertical: 14),
            decoration: AppStyles.boxDecorationButton,
            child: const Text(
              "Cancel order",
              style: AppTypography.bodyNormal15B,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 32),
            color: AppColors.textGrey,
            width: double.infinity,
            height: 0.4,
          ),
          Container(
            padding: AppStyles.paddingScreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Shipping info",
                  style: AppTypography.bodyNormal18Black,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 5),
                  child: const Text(
                    "Order address",
                    style: AppTypography.bodyNormal15,
                    // style: AppTypography.bodyNormal16Black,
                  ),
                ),
                const Text(
                  "3910 Crim Lane, Greendale Country,",
                  style: AppTypography.bodyNormal16Black,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const Text(
                    "Colorado, Zip Code 410348",
                    style: AppTypography.bodyNormal16Black,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 5),
                  child: const Text(
                    "Receives",
                    style: AppTypography.bodyNormal15,
                    // style: AppTypography.bodyNormal16Black,
                  ),
                ),
                const Text(
                  "Ava Johnson",
                  style: AppTypography.bodyNormal16Black,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 5),
                  child: const Text(
                    "Tracking ID",
                    style: AppTypography.bodyNormal15,
                    // style: AppTypography.bodyNormal16Black,
                  ),
                ),
                const Text(
                  "0706502",
                  style: AppTypography.bodyNormal16Black,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: AppColors.textGrey,
            width: double.infinity,
            height: 0.4,
          ),
          Padding(
            padding: AppStyles.paddingScreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Report a problem",
                        style: AppTypography.bodyBold,
                      ),
                      Assets.iconsIcWarming.svg()
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 2, bottom: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Share order",
                        style: AppTypography.bodyBold,
                      ),
                      Assets.iconsIcMedia.svg(height: 24)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: AppColors.textGrey,
            width: double.infinity,
            height: 0.4,
          ),
          Padding(
            padding: AppStyles.paddingScreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Order details",
                  style: AppTypography.bodyNormal18Grey,
                ),
                Assets.iconsIcArrowDown.svg()
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: AppColors.textGrey,
            width: double.infinity,
            height: 0.4,
          ),
        ],
      )),
    );
  }
}
