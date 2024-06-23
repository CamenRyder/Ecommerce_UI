import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class FooterSlidingPanelWidget extends StatelessWidget {
  const FooterSlidingPanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 34, top: 12),
      width: MediaQuery.sizeOf(context).width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(12)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            SizedBox(
              width: 9,
            ),
            Text(
              "Create drawer",
              style: AppTypography.body16White,
            )
          ],
        ),
      ),
    );
  }
}
