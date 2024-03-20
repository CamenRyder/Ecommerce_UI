import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/market_controller.dart';
import 'package:ecommerce_brand/screens/market/screen/page/tabs/feadtures_tabsview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanelSlidingMarketScreen extends StatelessWidget {
  PanelSlidingMarketScreen({super.key});
  final controller = Get.find<MarketScreenController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Constant.paddingHorizontal,
          vertical: Constant.paddingVertical),
      child: Column(
        children: [
          // tabsView(),
          Expanded(
              child: TabBarView(
            controller: controller.tabMarketController.value,
            children: [
              FeaturesTabView(),
              Container(
                color: AppColors.badgesOgraneLinear,
              ),
              Container(
                color: AppColors.textGrey,
              ),
              Container(
                color: Colors.green,
              ),
            ],
          )),
        ],
      ),
    );
  }

  Widget tabsView() {
    return TabBar(
        isScrollable: true,
        indicatorWeight: 1,
        indicatorColor: Colors.transparent,
        padding: const EdgeInsets.only(bottom: 0, left: 15),
        tabAlignment: TabAlignment.center,
        automaticIndicatorColorAdjustment: false,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: AppTypography.bodyNormalBold,
        unselectedLabelColor: AppColors.textGrey,
        controller: controller.tabMarketController.value,
        tabs: controller.tabViews());
  }
}
