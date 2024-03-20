import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/market_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class FeaturesTabView extends StatelessWidget {
  FeaturesTabView({super.key});

  final controller = Get.find<MarketScreenController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          child: Assets.imagesMarketHeaderView.image(),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: Constant.paddingHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("New Stores", style: AppTypography.bodyLarge22B),
              Assets.iconsIcArrowNext.svg(color: Colors.black)
            ],
          ),
        ),
        SizedBox(
          width: 400,
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.getPageViewLength(),
            itemBuilder: (context, index) {
              return Container(
                height: 180,
                color: index % 2 == 0
                    ? AppColors.primary
                    : AppColors.notifyPrimary,
                width: 200,
              );
            },
          ),
        )
      ],
    );
  }
}
