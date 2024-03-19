import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';

import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/screens/market/widgets/app_bar_shorter_market_screen.dart';
import 'package:ecommerce_brand/screens/market/widgets/header_market_tab_default.dart';

import 'package:flutter/material.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MarketScreen();
  }
}

class _MarketScreen extends State<MarketScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SafeArea(
          child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constant.paddingHorizontal,
                  vertical: Constant.paddingVertical),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarShorterMarketScreen(),
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
                      controller: tabController,
                      tabs: const [
                        Tab(
                          text: "Feadtures",
                        ),
                        Tab(
                          text: "Collections",
                        ),
                        Tab(
                          text: "Stores",
                        ),
                        Tab(
                          text: "Tags",
                        ),
                      ]),
                  Expanded(
                      child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
                        color: AppColors.primary,
                      ),
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
                  // AppBarLongMarketScreen(),
                ],
              ))),
    );
  }
}
