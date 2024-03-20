import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/divider_stepper_custom.dart';
import 'package:ecommerce_brand/domain/models/cart_tracking_product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CartOrderedReviewScreen extends StatefulWidget {
  CartOrderedReviewScreen({super.key, required this.model});
  CartTrackingProductModel model;
  @override
  State<StatefulWidget> createState() {
    return _CartOrderedReviewScreen();
  }
}

class _CartOrderedReviewScreen extends State<CartOrderedReviewScreen> {
  late CartTrackingProductModel _model;

  @override
  void initState() {
    super.initState();
    _model = widget.model;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
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
                  margin: const EdgeInsets.only(left: 34),
                  child: const Text(
                    "Order Review",
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
                child: _model.image.image(),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                _model.title ?? "Bershka Mom Jeans Mock",
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
                DividerSteppeCustomize.rulerBefore(),
                DividerSteppeCustomize.dotStepperBefore(),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal),
            child: const Text(
              "Your package was delivered",
              style: AppTypography.bodyLarge22,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal,
                vertical: Constant.paddingVertical),
            child: const Text(
              "Delivery date: March 30",
              style: AppTypography.bodyNormal18Grey,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal,
                vertical: Constant.paddingVertical),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 0.5, color: AppColors.grey75)),
            padding: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal, vertical: 15),
            child: const Text(
              "Shipping tracking detail",
              style: AppTypography.bodyBold70per,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(
              horizontal: Constant.paddingHorizontal,
            ),
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 0.5, color: AppColors.grey75)),
            padding: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal, vertical: 15),
            child: const Text(
              "Buy again",
              style: AppTypography.bodyBold70perWhite,
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


/*

 CartTrackingProductModel(
        image: Assets.imagesMockImage03,
        title: "Bershka Mom Jeans",
        status: const Row(
          children: [
            Text(
              "Current Order ",
              style: AppTypography.bodyNormalPrimary,
            ),
            Text(
              "- Arrival est. Apr 14",
              style: AppTypography.bodyNormal,
            ),
          ],
        )) ;  

*/