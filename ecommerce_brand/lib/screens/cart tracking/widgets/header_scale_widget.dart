import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class HeaderScaleWidget extends StatelessWidget {
  const HeaderScaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Container()),
            const Text(
              "Orders",
              style: AppTypography.bodyBold,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              "Messages",
              style: AppTypography.bodyBold50per,
            ),
            Expanded(child: Container()),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          margin: const EdgeInsets.only(left: 12, right: 12, top: 24),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 221, 221, 221),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Filter inbox",
                style: AppTypography.bodyNormal16,
              ),
              Assets.iconsIcResearch.svg(color: AppColors.textGrey)
            ],
          ),
        )
      ],
    );
  }
}
