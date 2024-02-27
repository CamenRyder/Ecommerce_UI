import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

  static Widget rulerBefore({double bandWidth = 5}) {
    return Expanded(
      child: Container(
        height: bandWidth,
        color: AppColors.primary,
      ),
    );
  }

  static Widget rulerAfter({double bandWidth = 5}) {
    return Expanded(
      child: Container(
        height: bandWidth,
        color: AppColors.primaryDecoration,
      ),
    );
  }

  static Widget dotStepperBefore({double size = 16}) {
    return Container(
      height: size,
      width: size,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: AppColors.primary),
    );
  }

  static Widget dotStepperAfter({double size = 16}) {
    return Container(
      height: size,
      width: size,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.primaryDecoration),
    );
  }

  static Widget dotStepperChecking({double size = 14}) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColors.primary),
          shape: BoxShape.circle),
      child: Container(
        height: size,
        width: size,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppColors.primary),
      ),
    );
  }
}

/*



*/