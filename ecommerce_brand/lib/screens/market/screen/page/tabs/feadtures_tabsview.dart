import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/domain/controller/market_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeaturesTabView extends StatelessWidget {
  FeaturesTabView({super.key});

  final controller = Get.find<MarketScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 400,
          color: AppColors.backgroundWhiteBlur,
        )
      ],
    );
  }
}
