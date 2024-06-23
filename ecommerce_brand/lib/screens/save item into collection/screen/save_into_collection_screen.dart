import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/save_into_collection_controller.dart';

import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/body_save_into_collection_widget.dart';
import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/footer_sliding_panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SaveIntoCollectionScreen extends StatefulWidget {
  const SaveIntoCollectionScreen({super.key});

  @override
  State<SaveIntoCollectionScreen> createState() =>
      _SaveIntoCollectionScreenState();
}

class _SaveIntoCollectionScreenState extends State<SaveIntoCollectionScreen> {
  final controller = Get.put(SaveIntoCollectionController());
  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: AppColors.backgroundWhiteGrey,
      body: Obx(
        () => SlidingUpPanel(
            footer: const FooterSlidingPanelWidget(),
            onPanelClosed: null,
            onPanelSlide: (position) {
              if (position > 0.99) {
                controller.isExpand.value = true;
              } else {
                controller.isExpand.value = false;
              }
            },
            boxShadow: null,
            color:
                controller.isExpand.value ? Colors.white : Colors.transparent,
            minHeight: heightScreen / 1.60,
            maxHeight: heightScreen,
            borderRadius: AppStyles.borderRadiusPanel,
            panel: Column(
              children: [
                Assets.iconsIcRulerRack
                    .svg(color: Colors.white, height: 4, width: 56),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 24, right: 24, top: 32, bottom: 12),
                        decoration: const BoxDecoration(
                            color: AppColors.backgroundWhite,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18))),
                        child: Column(
                          children: [
                            const Center(
                              child: Text(
                                "Save to drawer",
                                style: AppTypography.bodyNormal18Black,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 18, bottom: 12),
                              height: 50,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.grey65),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Filter drawers",
                                    style: AppTypography.bodyBoldlGrey,
                                  ),
                                  Assets.iconsIcResearch
                                      .svg(color: AppColors.textGrey)
                                ],
                              ),
                            ),
                            Container(
                                child: Row(
                              children: [
                                Assets.imagesMockImageSaveCollection01
                                    .image(height: 300, width: 200),
                              ],
                            ))
                          ],
                        )))
              ],
            ),
            body: const BodySaveIntoCollectionWidget()),
      ),
    );
  }
}
