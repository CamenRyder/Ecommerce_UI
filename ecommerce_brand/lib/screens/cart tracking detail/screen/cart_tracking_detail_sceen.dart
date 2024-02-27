import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/divider_stepper_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartTrackingDetailScreen extends StatelessWidget {
  const CartTrackingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: AppStyles.paddingScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
              duration: const Duration(microseconds: 500),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      "Your package is on it's way",
                      style: AppTypography.header,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    child: const Text(
                      "Arrival estimate: April 15",
                      style: AppTypography.bodyNormal18Black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 18, bottom: 8),
                    child: const Text(
                      "Your package is near!",
                      style: AppTypography.bodyNormal20Black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    child: const Text(
                      "April 15,  12:05",
                      style: AppTypography.bodyNormal16,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 18, bottom: 8),
                    child: const Text(
                      "Your package is on route",
                      style: AppTypography.bodyNormal20Black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    child: const Text(
                      "April 15,  09:25",
                      style: AppTypography.bodyNormal16,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 18, bottom: 8),
                    child: const Text(
                      "Your package left the distribution center",
                      style: AppTypography.bodyNormal20Black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    child: const Text(
                      "April 15,  04:47",
                      style: AppTypography.bodyNormal16,
                    ),
                  ), 
                  
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
