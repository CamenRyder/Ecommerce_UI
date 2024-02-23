import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class DividerSteppeCustomize extends StatelessWidget {
  const DividerSteppeCustomize({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 14,
          width: 14,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primary),
        ),
        Expanded(
          child: Container(
            height: 4,
            color: AppColors.primary,
          ),
        ),
        Container(
          height: 14,
          width: 14,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primary),
        ),
        Expanded(
          child: Container(
            height: 4,
            color: AppColors.primary,
          ),
        ),
        Container(
          height: 14,
          width: 14,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primary),
        ),
        Expanded(
          child: Container(
            height: 4,
            color: AppColors.primaryDecoration,
          ),
        ),
        Container(
          height: 14,
          width: 14,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primaryDecoration),
        ),
      ],
    );
  }
}
