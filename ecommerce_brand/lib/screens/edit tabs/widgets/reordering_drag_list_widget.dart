import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';
import 'package:ecommerce_brand/screens/edit%20tabs/widgets/bottom_sheet_edits_tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReorderingListTabs extends StatefulWidget {
  const ReorderingListTabs({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ReorderingListTabs();
  }
}

class _ReorderingListTabs extends State<ReorderingListTabs> {
  late List<TabsEditsModel> _items;
  late List<TabsEditsModel> _itemsDisable;
  final _controller = Get.find<EditTabsScreenController>();
  @override
  void initState() {
    super.initState();
    _items = _controller.getTabsElementSubmit();
    _itemsDisable = _controller.getTabsElementUnsubmit();
  }

  @override
  Widget build(BuildContext context) {
    print("into here?") ; 
    _items = _controller.getTabsElementSubmit();
    _itemsDisable = _controller.getTabsElementUnsubmit();
    print("_items: $_items") ;  
    return Expanded(
      child: Obx(() {
        return ReorderableListView(
          physics: const NeverScrollableScrollPhysics(),
          footer: _itemsDisable.isEmpty == false 
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 3, bottom: 18),
                      height: 0.2,
                      width: double.infinity,
                      color: AppColors.textGrey,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Constant.paddingHorizontal,
                          vertical: Constant.paddingHorizontal),
                      child: const Text(
                        "Diabled tabs",
                        style: AppTypography.bodyLarge,
                      ),
                    ),
                    for (int index = 0;
                        index < _itemsDisable.length;
                        index++)
                      Container(
                        color: Colors.red,
                        height: 80,
                      ),
                  ],
                )
              : null,
          children: [
            for (int index = 0; index < _items.length; index += 1)
              Container(
                  key: Key('$index'),
                  padding: const EdgeInsets.symmetric(
                      horizontal: Constant.paddingHorizontal),
                  color: _controller.unfollowMutilple.value
                      ? AppColors.backgroundWhite
                      : _items[index].isChoice
                          ? AppColors.primaryDecoration
                          : AppColors.backgroundWhite,
                  child: GestureDetector(
                      onTap: () {
                        _controller.setChoiceElement(index + 1);
                        setState(() {});
                      },
                      child: Container(
                        color: _items[index].isChoice
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
                            _items[index].tag == "Tag"
                                ? Container(
                                    margin: const EdgeInsets.only(
                                        top: 18,
                                        bottom: 18,
                                        left: 30,
                                        right: 28),
                                    child: Assets.iconsIcTag.svg(width: 30),
                                  )
                                : Container(
                                    margin: const EdgeInsets.only(
                                        top: 18,
                                        bottom: 18,
                                        left: 20,
                                        right: 20),
                                    decoration: BoxDecoration(
                                        color: AppColors.backgroundWhite,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: AppColors.textGrey,
                                            width: 0.2)),
                                    child: CircleAvatar(
                                      radius: 24.0,
                                      backgroundColor: Colors.transparent,
                                      child: _items[index].image.image(),
                                    ),
                                  ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${_items[index].name}",
                                  style: AppTypography.bodyBold,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text("${_items[index].tag}",
                                    style: AppTypography.bodyNormal)
                              ],
                            )),
                            !_items[index].isChoice
                                ? GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          isDismissible: false,
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (_) {
                                            return BottomSheetEditTabs(
                                              textChangeTabs:
                                                  _items[index].name ??
                                                      "mutilple.",
                                              withBottomSheet: () {
                                                Get.back();
                                              },
                                              changeTabs: () {
                                                _items[index].isShow = false;
                                                _controller.hideTabsFromFeed(
                                                    index );
                                                setState(() {
                                                  print("Set state?") ; 
                                                });
                                                Get.back();
                                              },
                                            );
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
                      ))),
          ],
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final item = _items.removeAt(oldIndex);
              _items.insert(newIndex, item);
              _controller.changeTabsArrange(items: _items);
            });
          },
        );
      }),
    );
  }
}
