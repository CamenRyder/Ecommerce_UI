import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/market_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarShorterMarketScreen extends StatelessWidget {
  AppBarShorterMarketScreen({super.key});

  final controller = Get.find<MarketScreenController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedContainer(
        duration: const Duration(milliseconds: 550),
        padding:
            const EdgeInsets.symmetric(horizontal: Constant.paddingVertical),
        decoration: BoxDecoration(
            color: AppColors.notifyPrimary,
            borderRadius: BorderRadius.circular(24)),
        width: controller.isExpandNotify.value
            ? MediaQuery.sizeOf(context).width * 3 / 4
            : 55,
        height: MediaQuery.sizeOf(context).width * 1 / 8,
        child: expandWidget()));
  }

  Widget expandWidget() {
    return Container(
      padding: const EdgeInsets.only(top: 14, left: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            child: Badge(
              smallSize: 4,
              backgroundColor: AppColors.badgesOgraneLinear,
              child: Assets.iconsIcFile.svg(),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3),
            child: const Text(
              "Your package is almost there!",
              style: AppTypography.bodyNormal15Black,
            ),
          ),
        ],
      ),
    );
  }
}
