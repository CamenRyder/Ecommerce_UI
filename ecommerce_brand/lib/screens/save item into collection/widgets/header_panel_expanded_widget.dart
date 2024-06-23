import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderPanelExpandedWidget extends StatelessWidget {
  const HeaderPanelExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Assets.iconsIcClose.svg(height: 28, width: 28),
          ),
          Assets.iconsIcFeature.svg(height: 28, width: 28),
          Assets.iconsIcResearch.svg(height: 28, width: 28),
        ],
      ),
    );
  }
}
