import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class ButtonBottomWidget extends StatelessWidget {
  const ButtonBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12, top: 9),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(99, 32),
          backgroundColor: AppColors.primary, // Màu nền của button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Bo góc 18
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: Constant.paddingHorizontal,
              vertical: 3), // Khoảng cách padding
        ),
        onPressed: () {},
        child: const Text(
          "Add to cart",
          style: AppTypography.body16White,
        ),
      ),
    );
  }
}
