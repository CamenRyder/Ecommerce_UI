import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class IndicatorCustom extends StatelessWidget {
  const IndicatorCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitThreeBounce(
        color:AppColors.primary,
        size: 18.0,
      ),
    );
  }
}
