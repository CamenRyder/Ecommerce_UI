import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class WrapperIconSVG extends StatelessWidget {
  WrapperIconSVG(
      {super.key, colors, width, height, radius, onTapX, required this.icon});
  final SvgGenImage icon;
  final double height = 45;
  final double width = 45;
  final double radius = 12;
   Color colors = AppColors.black;
  dynamic onTapX;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapX,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: icon.svg(
            height: height,
            width: width,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              colors,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
