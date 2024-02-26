import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class HeaderExpandedWidget extends StatelessWidget {
  const HeaderExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.iconsIcClose.svg(),
        Expanded(child: Container()),
        const Text(
          "Orders",
          style: AppTypography.bodyBold,
        ),
        const SizedBox(
          width: 15,
        ),
        const Text(
          "Messages",
          style: AppTypography.bodyBold50per,
        ),
        Expanded(child: Container()),
        Assets.iconsIcResearch.svg()
      ],
    );
  }
}
