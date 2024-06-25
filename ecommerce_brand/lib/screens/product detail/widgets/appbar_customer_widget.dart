import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarCustomerWidget extends StatelessWidget {
  const AppbarCustomerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RotatedBox(
            quarterTurns: 4,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 24,
              ),
            )),
        Expanded(child: Container()),
        Assets.iconsIcFeature.svg(height: 24, width: 24),
        Container(
          margin: const EdgeInsets.only(left: Constant.paddingHorizontal),
          child: const Icon(
            Icons.more_horiz,
            color: Colors.black,
            size: 32,
          ),
        ),
      ],
    );
  }
}
