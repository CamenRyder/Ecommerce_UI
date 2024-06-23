import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/list_collection_widget.dart';
import 'package:flutter/material.dart';

class PanelSlidingPanelWidget extends StatelessWidget {
  const PanelSlidingPanelWidget({super.key, required this.scrollController});
  final ScrollController scrollController;
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
                    const Center(
                      child: Text(
                        "Save to drawer",
                        style: AppTypography.bodyNormal18Black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 18, bottom: 12),
                      height: 50,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.grey65),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Filter drawers",
                            style: AppTypography.bodyBoldlGrey,
                          ),
                          Assets.iconsIcResearch.svg(color: AppColors.textGrey)
                        ],
                      ),
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
