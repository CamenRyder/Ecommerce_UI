import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/domain/controller/save_into_collection_controller.dart';
import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/header_panel_expanded_widget.dart';
import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/header_panel_scale_widget.dart';
import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/list_collection_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanelSlidingPanelWidget extends StatelessWidget {
  PanelSlidingPanelWidget({super.key, required this.scrollController});
  final ScrollController scrollController;
  final controller = Get.find<SaveIntoCollectionController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Assets.iconsIcRulerRack.svg(color: Colors.white, height: 4, width: 56),
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
                    Obx(
                      () => controller.isExpand.value
                          ? const HeaderPanelExpandedWidget()
                          : const HeaderPanelScaleWidget(),
                    ),
                    Expanded(
                        child: ListCollectionWidget(
                            scrollController: scrollController))
                  ],
                )))
      ],
    );
  }
}
