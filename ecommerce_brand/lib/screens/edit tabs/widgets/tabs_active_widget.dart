import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';
import 'package:ecommerce_brand/screens/edit%20tabs/widgets/bottom_sheet_edits_tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TabsActiveWidget extends StatefulWidget {
  TabsActiveWidget(
      {super.key, required this.item, required this.index, this.onTabChanged});
  TabsEditsModel item;
  int index;
  dynamic onTabChanged;
  @override
  State<StatefulWidget> createState() {
    return _TabsActiveWidget();
  }
}

class _TabsActiveWidget extends State<TabsActiveWidget> {
  final _controller = Get.find<EditTabsScreenController>();
  late Key key;
  late int index;
  late TabsEditsModel item;

  @override
  void initState() {
    super.initState();
    key = widget.key!;
    item = widget.item;
    index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        key: Key('$key'),
        padding:
            const EdgeInsets.symmetric(horizontal: Constant.paddingHorizontal),
        color: _controller.unfollowMutilple.value
            ? AppColors.backgroundWhite
            : item.isChoice
                ? AppColors.primaryDecoration
                : AppColors.backgroundWhite,
        child: GestureDetector(
            onTap: () {
              _controller.setChoiceElement(index + 1);
              setState(() {});
            },
            child: Container(
              color: item.isChoice
                  ? Colors.transparent
                  : AppColors.backgroundWhite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.drag_handle,
                    color: AppColors.textGrey,
                    size: 32,
                  ),
                  item.tag == "Tag"
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
                            child: item.image.image(),
                          ),
                        ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${item.name}",
                        style: AppTypography.bodyBold,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("${item.tag}", style: AppTypography.bodyNormal)
                    ],
                  )),
                  !item.isChoice
                      ? GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                isDismissible: false,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (_) {
                                  return BottomSheetEditTabs(
                                      textChangeTabs: item.name ?? "mutilple.",
                                      withBottomSheet: () {
                                        Get.back();
                                      },
                                      changeTabs: widget.onTabChanged);
                                });
                          },
                          child: Assets.iconsIcMoreDots.svg(
                              height: 30,
                              // ignore: deprecated_member_use_from_same_package
                              color: AppColors.black),
                        )
                      : Container(
                          child: Assets.iconsIcTicked.svg(),
                        )
                ],
              ),
            )));
  }
}
