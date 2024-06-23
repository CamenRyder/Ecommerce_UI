import 'package:ecommerce_brand/core/routes/routes.dart';
import 'package:ecommerce_brand/core/utils/helper.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/divider_stepper_custom.dart';
import 'package:ecommerce_brand/core/utils/widgets/indicatorCustom.dart';
import 'package:ecommerce_brand/core/utils/widgets/popUp_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class InfoCurrentPackageWidget extends StatelessWidget {
  const InfoCurrentPackageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20, left: 12, right: 12),
      padding: AppStyles.paddingSquare,
      decoration: BoxDecoration(
          color: AppColors.backgroundWhite,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerSteppeCustomize(),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: const Text(
              "Your package is on it's way",
              style: AppTypography.header,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: const Text(
              "Arrival estimate: April 15",
              style: AppTypography.bodyNormal16,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 12),
                    height: 55,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Assets.imagesMockImage01.image(),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: const Text(
                        "Bershka Mom Jeans",
                        style: AppTypography.bodyBold,
                      ),
                    ),
                    const Text(
                      "26 - S | Blue | ID:0706502",
                      style: AppTypography.bodyNormal,
                    ),
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.cartTrackingDetail),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: AppColors.textGrey, width: 0.5)),
              child: const Center(
                child: Text(
                  "More info",
                  style: AppTypography.bodyBold,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              animationToastLoadingFail(context: context);
            },
            child: Container(
              margin: const EdgeInsets.only(top: 15, bottom: 12),
              padding: const EdgeInsets.symmetric(vertical: 13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: AppColors.textGrey, width: 0.5)),
              child: const Center(
                child: Text(
                  "Cancel order",
                  style: AppTypography.bodyBold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
