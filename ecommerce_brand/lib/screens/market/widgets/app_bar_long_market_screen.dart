import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidable/hidable.dart';

// ignore: must_be_immutable
class AppBarLongMarketScreen extends StatelessWidget {
  AppBarLongMarketScreen({super.key, required this.isPadding});
  bool isPadding = false;
  final controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Hidable(
      controller: controller.scrollController,
      enableOpacityAnimation: true,
      deltaFactor: 0.8,
      child: Container(
        padding: isPadding
            ? const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal,
              )
            : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Badge(
              smallSize: 4,
              backgroundColor: AppColors.badgesOgraneLinear,
              child: Assets.iconsIcFile.svg(height: 28),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.symmetric(
                    horizontal: Constant.paddingHorizontal),
                width: MediaQuery.sizeOf(context).width * 2 / 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.border),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Search on Tassel",
                      style: AppTypography.bodyNormal16,
                    ),
                    Assets.iconsIcResearch.svg(color: AppColors.textGrey)
                  ],
                )),
            Assets.iconsIcWomen.svg(height: 17),
          ],
        ),
      ),
    );
  }
}
