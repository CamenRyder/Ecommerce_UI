import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class AppBarShorterMarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Constant.paddingVertical),
      decoration: BoxDecoration(
          color: AppColors.notifyPrimary,
          borderRadius: BorderRadius.circular(24)),
      width: MediaQuery.sizeOf(context).width * 3 / 4,
      height: MediaQuery.sizeOf(context).width * 1 / 8,
      child: Row(
        children: [
          Badge(
            smallSize: 4,
            backgroundColor: AppColors.badgesOgraneLinear,
            child: Assets.iconsIcFile.svg(),
          ),
          Expanded(child: Container()),
          const Text(
            "Your package is almost there!",
            style: AppTypography.bodyNormal15Black,
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
