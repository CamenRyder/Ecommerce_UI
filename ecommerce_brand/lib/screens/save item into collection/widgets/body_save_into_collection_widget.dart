import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodySaveIntoCollectionWidget extends StatelessWidget {
  BodySaveIntoCollectionWidget({super.key, required this.product});
  Product product;
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
                  child: Assets.iconsIcClose.svg(height: 28, width: 28),
                ),
                Assets.iconsIcFeature.svg(height: 28, width: 28),
                const SizedBox(
                  width: 28,
                  height: 28,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 45, bottom: 30),
              height: 126,
              width: 103,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: product.image.image()),
            ),
            Text(
              product.name ?? 'Bershka Mom Jeans',
              style: AppTypography.bodyBold70perBlack,
            ),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
