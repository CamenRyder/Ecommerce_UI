import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/divider_stepper_custom.dart';
import 'package:ecommerce_brand/screens/cart%20tracking%20detail/widget/stepper_1_widget.dart';
import 'package:ecommerce_brand/screens/cart%20tracking%20detail/widget/stepper_2_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartTrackingDetailScreen extends StatelessWidget {
  const CartTrackingDetailScreen({super.key});

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
                child: Assets.imagesMockCartProductImage05.image(),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: const Text(
                "Bershka Mom Jeans",
                style: AppTypography.bodyLarge,
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
                DividerSteppeCustomize.dotStepperChecking(),
                DividerSteppeCustomize.rulerAfter(),
                DividerSteppeCustomize.dotStepperAfter(),
              ],
            ),
          ),
          AnimatedContainer(
              padding: AppStyles.paddingScreen,
              duration: const Duration(microseconds: 500),
              child: StepperSecondWidget()),
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
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: AppColors.textGrey,
            width: double.infinity,
            height: 0.4,
          ),
          Container(
            padding: AppStyles.paddingScreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipping info",
                  style: AppTypography.bodyNormal18Black,
                ), 
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: AppColors.textGrey,
            width: double.infinity,
            height: 0.4,
          )
        ],
      )),
    );
  }
}
