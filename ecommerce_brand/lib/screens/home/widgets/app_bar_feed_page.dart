import 'package:ecommerce_brand/core/routes/routes.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hidable/hidable.dart';

class AppBarFeedPage extends StatelessWidget {
  AppBarFeedPage({super.key});

  final controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Hidable(
      controller: controller.scrollController,
      enableOpacityAnimation: true,
      deltaFactor: 0.8,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Assets.iconsIcFile.svg(height: 24, width: 24),
              onTap: () {
                Get.toNamed(Routes.cartTracking);
              },
            ),
            GestureDetector(
              onTap: () {
                controller.animateTopPage();
              },
              child: const Text(
                "Feed",
                style: AppTypography.header,
              ),
            ),
            GestureDetector(
              child: Assets.iconsIcResearch.svg(height: 24, width: 24),
            ),
          ],
        ),
      ),
    );
  }
}
