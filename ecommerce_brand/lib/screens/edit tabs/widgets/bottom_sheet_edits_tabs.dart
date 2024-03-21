import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BottomSheetEditTabs extends StatelessWidget {
  BottomSheetEditTabs(
      {super.key,
      this.textShow = "Hide",
      required this.changeTabs,
      required this.textChangeTabs,
      required this.withBottomSheet});
  dynamic changeTabs;
  dynamic withBottomSheet;
  String textChangeTabs;
  String textShow = "Hide";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: Assets.iconsIcSwipeHint.svg(width: 85),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal,
                vertical: Constant.paddingVertical),
            decoration: BoxDecoration(
                color: AppColors.backgroundWhite,
                borderRadius: BorderRadius.circular(24)),
            height: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        const Text(
                          "Actions",
                          style: AppTypography.bodyLarge22,
                        ),
                        Expanded(child: Container()),
                      ],
                    )),
                templateButtonActions(
                    text: "$textShow $textChangeTabs from feed",
                    icon: Assets.iconsIcDisable,
                    function: changeTabs),
                templateButtonActions(
                    text: "Unfollow $textChangeTabs",
                    icon: Assets.iconsIcUnfollow,
                    function: withBottomSheet),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget templateButtonActions(
      {required String text, required dynamic icon, dynamic function}) {
    return GestureDetector(
      onTap: function,
      child: Container(
        margin: const EdgeInsets.only(top: Constant.paddingHorizontal),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppTypography.bodyBold,
            ),
            icon.svg(),
          ],
        ),
      ),
    );
  }
}
