import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodySaveIntoCollectionWidget extends StatelessWidget {
  const BodySaveIntoCollectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(
            left: Constant.paddingHorizontal,
            right: Constant.paddingHorizontal, 
            top: Constant.paddingVertical),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Assets.iconsIcClose.svg(),
                ),
                Assets.iconsIcFeature.svg(),
                const SizedBox(
                  width: 20,
                  height: 20,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 60, bottom: 30),
              height: 126,
              width: 103,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Assets.imagesMockImage03.image()),
            ),
            const Text(
              'Bershka Mom Jeans',
              style: AppTypography.bodyBold70perBlack,
            ),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
