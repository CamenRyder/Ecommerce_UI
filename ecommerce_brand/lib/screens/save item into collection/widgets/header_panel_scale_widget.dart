import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class HeaderPanelScaleWidget extends StatelessWidget {
  const HeaderPanelScaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 14),
          child: const Center(
            child: Text(
              "Save to drawer",
              style: AppTypography.bodyNormal18Black,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 28, bottom: 32),
          height: 55,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: AppColors.grey65),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Filter drawers",
                style: AppTypography.bodyBoldlGrey16,
              ),
              Assets.iconsIcResearch.svg(color: AppColors.textGrey)
            ],
          ),
        ),
      ],
    );
  }
}
