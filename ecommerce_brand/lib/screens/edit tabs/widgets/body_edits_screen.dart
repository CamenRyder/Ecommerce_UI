import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyEditsScreen extends StatefulWidget {
  const BodyEditsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BodyEditsScreen();
  }
}

class _BodyEditsScreen extends State<BodyEditsScreen> {
  late List<TabsEditsModel> _items;
  final _controller = Get.find<EditTabsScreenController>();
  @override
  void initState() {
    super.initState();
    _items = _controller.getTabsElementSubmit();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: Constant.paddingVertical),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constant.paddingHorizontal,
                  vertical: Constant.paddingHorizontal),
              child: const Text("Active tabs", style: AppTypography.bodyLarge),
            ),
            Expanded(
              child: ReorderableListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (int index = 0; index < _items.length; index += 1)
                    Container(
                        key: Key('$index'),
                        padding: const EdgeInsets.symmetric(
                            horizontal: Constant.paddingHorizontal),
                        color: _items[index].isChoice
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
                                          child:
                                              Assets.iconsIcTag.svg(width: 30),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (_) {
                                                  return widgetBottomSheet();
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
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget widgetBottomSheet() {
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
                          style: AppTypography.bodyLarge,
                        ),
                        Expanded(child: Container()),
                      ],
                    )),
                templateButtonActions(
                    text: "Hide mutilple from feed",
                    icon: Assets.iconsIcDisable,
                    function: () {
                      print("On tap on tap");
                    }),
                templateButtonActions(
                    text: "Unfollow mutilple",
                    icon: Assets.iconsIcUnfollow,
                    function: () {
                      print("On tap on tap");
                    }),
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
