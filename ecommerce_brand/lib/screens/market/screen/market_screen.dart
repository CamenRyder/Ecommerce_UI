import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/widgets/indicatorCustom.dart';
import 'package:ecommerce_brand/screens/market/widgets/app_bar_long_market_screen.dart';
import 'package:ecommerce_brand/screens/market/widgets/app_bar_shorter_market_screen.dart';
import 'package:flutter/material.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MarketScreen();
  }
}

class _MarketScreen extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Constant.paddingHorizontal,
            vertical: Constant.paddingVertical),
        child: Column(
          children: [
            // AppBarShorterMarketScreen(),
            AppBarLongMarketScreen(),
          ],
        ),
      )),
    );
  }
}
