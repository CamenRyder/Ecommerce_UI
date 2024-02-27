import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/cart_tracking_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderScaleWidget extends StatelessWidget {
  HeaderScaleWidget({super.key});
  final controller = Get.find<CartTrackingController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Row(
            children: [
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
                onTap: controller.selectMessages,
                child: Text(
                  "Messages",
                  style: controller.isMessages.value
                      ? AppTypography.bodyBold
                      : AppTypography.bodyBold50per,
                ),
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
                 Text(
                  controller.isMessages.value ? "Filter inbox" : "Filter order",
                  style: AppTypography.bodyNormal16,
                ),
                Assets.iconsIcResearch.svg(color: AppColors.textGrey)
              ],
            ),
          )
        ],
      ),
    );
  }
}
