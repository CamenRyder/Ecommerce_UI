import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';
import 'package:ecommerce_brand/screens/edit%20tabs/widgets/bottom_sheet_edits_tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TabsDisableWidget extends StatelessWidget {
  TabsEditsModel items;
  dynamic changeTabs;

  TabsDisableWidget({super.key, required this.items, this.changeTabs});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(right: Constant.paddingHorizontal, left: 10),
        color: AppColors.backgroundWhite,
        child: Container(
          color:
              items.isChoice ? Colors.transparent : AppColors.backgroundWhite,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              items.tag == "Tag"
                  ? Container(
                      margin: const EdgeInsets.only(
                          top: 18, bottom: 18, left: 30, right: 28),
                      child: Assets.iconsIcTag.svg(width: 30),
                    )
                  : Container(
                      margin: const EdgeInsets.only(
                          top: 18, bottom: 18, left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: AppColors.backgroundWhite,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.textGrey, width: 0.2)),
                      child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: Colors.transparent,
                          child: items.image.image(
                              // tint:Colors.grey ,
                              color: Colors.grey)),
                    ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${items.name}",
                    style: AppTypography.bodyBold50per,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text("${items.tag}", style: AppTypography.bodyNormal50per)
                ],
              )),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isDismissible: false,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (_) {
                        return BottomSheetEditTabs(
                            textShow: "Show",
                            textChangeTabs: items.name ?? "mutilple.",
                            withBottomSheet: () {
                              Get.back();
                            },
                            changeTabs: changeTabs);
                      });
                },
                child: Assets.iconsIcMoreDots.svg(
                    height: 30,
                    // ignore: deprecated_member_use_from_same_package
                    color: AppColors.black),
              )
            ],
          ),
        ));
  }
}
