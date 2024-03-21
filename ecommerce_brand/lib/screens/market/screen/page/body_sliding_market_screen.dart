import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/market_controller.dart';
import 'package:ecommerce_brand/screens/market/widgets/app_bar_long_market_screen.dart';
import 'package:ecommerce_brand/screens/market/widgets/app_bar_shorter_market_screen.dart';
import 'package:ecommerce_brand/screens/market/widgets/header_market_tab_default.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodySldingMarketScreen extends StatefulWidget {
  const BodySldingMarketScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BodySldingMarketScreen();
  }
}

class _BodySldingMarketScreen extends State<BodySldingMarketScreen> {
  final controller = Get.find<MarketScreenController>();
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constant.paddingHorizontal,
                  vertical: Constant.paddingVertical),
              child: Obx(
                () => AnimatedSwitcher(
                    duration: const Duration(milliseconds: 650),
                    reverseDuration: const Duration(milliseconds: 650),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        alwaysIncludeSemantics: true,
                        opacity: animation,
                        child: child,
                      );
                    },
                    // child: isShow ? closedBodySliding() : openedBodySliding(),
                    child: controller.isFadeAnimationBodySlding.value
                        ? closedBodySliding()
                        : openedBodySliding()),
              ))),
    );
  }

  Widget closedBodySliding() {
    return Column(
      key: const ValueKey<int>(1),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBarLongMarketScreen(
          isPadding: false,
        ),
        TabBar(
            isScrollable: true,
            indicatorWeight: 1,
            indicatorColor: Colors.transparent,
            padding: const EdgeInsets.only(bottom: 10, left: 15),
            tabAlignment: TabAlignment.center,
            automaticIndicatorColorAdjustment: false,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: AppTypography.bodyNormalBold,
            unselectedLabelColor: AppColors.textGrey,
            controller: controller.tabMarketController.value,
            tabs: controller.tabViews()),
        Expanded(child: Container()),
      ],
    );
  }

  Widget openedBodySliding() {
    return Column(
      key: const ValueKey<int>(2),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppBarShorterMarketScreen(),
        // const AppBarLongMarketScreen(),
        const HeaderMarketDefault(),
        TabBar(
            isScrollable: true,
            indicatorWeight: 1,
            indicatorColor: Colors.transparent,
            padding: const EdgeInsets.only(bottom: 10, left: 15),
            tabAlignment: TabAlignment.center,
            automaticIndicatorColorAdjustment: false,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: AppTypography.bodyNormalBold,
            unselectedLabelColor: AppColors.textGrey,
            controller: controller.tabMarketController.value,
            tabs: controller.tabViews()),

        Expanded(child: Container()),
        // AppBarLongMarketScreen(),
      ],
    );
  }
}
