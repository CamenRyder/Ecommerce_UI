import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/cart_tracking_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HeaderExpandedWidget extends StatelessWidget {
  HeaderExpandedWidget({super.key});
  final controller = Get.find<CartTrackingController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: [
            Assets.iconsIcClose.svg(),
            Expanded(child: Container()),
            GestureDetector(
              onTap: controller.selectOrder,
              child: Text(
                "Orders",
                style: controller.isOrders.value
                    ? AppTypography.bodyBold
                    : AppTypography.bodyBold50per,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: controller.selectMessages  ,
              child: Text(
                "Messages",
                style: controller.isMessages.value
                    ? AppTypography.bodyBold
                    : AppTypography.bodyBold50per,
              ),
            ),
            Expanded(child: Container()),
            Assets.iconsIcResearch.svg()
          ],
        ));
  }
}
