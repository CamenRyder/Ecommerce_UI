import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditTabsScreen extends StatefulWidget {
  const EditTabsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _EditTabsScreen();
  }
}

class _EditTabsScreen extends State<EditTabsScreen> {
  // final List<int> _items = List<int>.generate(5, (int index) => index);
  late List<TabsEditsModel> _items;
  final _controller = Get.find<EditTabsScreenController>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = _controller.getTabsElementSubmit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundWhite,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.backgroundWhite,
          title: const Text("Tabs Edit", style: AppTypography.header),
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.close,
              size: 28,
              color: AppColors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: Constant.paddingVertical),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Constant.paddingHorizontal,
                      vertical: Constant.paddingHorizontal),
                  child:
                      const Text("Active tabs", style: AppTypography.bodyLarge),
                ),
                Expanded(
                  child: ReorderableListView(
                    physics: const NeverScrollableScrollPhysics(),
                    // proxyDecorator: proxyDecorator,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                              child: Assets.iconsIcTag
                                                  .svg(width: 30),
                                            )
                                          : Container(
                                              margin: const EdgeInsets.only(
                                                  top: 18,
                                                  bottom: 18,
                                                  left: 20,
                                                  right: 20),
                                              decoration: BoxDecoration(
                                                  color:
                                                      AppColors.backgroundWhite,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: AppColors.textGrey,
                                                      width: 0.2)),
                                              child: CircleAvatar(
                                                radius: 24.0,
                                                backgroundColor:
                                                    Colors.transparent,
                                                child:
                                                    _items[index].image.image(),
                                              ),
                                            ),
                                      Expanded(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                      Assets.iconsIcMoreDots.svg(
                                          height: 30, color: AppColors.black)
                                    ],
                                  ),
                                ))),
                    ],
                    onReorder: (int oldIndex, int newIndex) {
                      setState(() {
                        if (oldIndex < newIndex) {
                          newIndex -= 1;
                        }
                        // print(oldIndex) ;
                        // print(newIndex);
                        final item = _items.removeAt(oldIndex);
                        _items.insert(newIndex, item);
                        print("Data: ${_items.toString()}");
                        _controller.changeTabsArrange();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

  // Widget _headerEditTabsScreen() {
  //   return Container(
  //     color: AppColors.primary,
  //     child: Row(
  //       children: [
  //         GestureDetector(
  //           onTap: () {
  //             Get.back();
  //           },
  //           child: const Icon(
  //             Icons.close,
  //             size: 28,
  //             color: AppColors.black,
  //           ),
  //         ),
  //         Expanded(child: Container()),
  //         const Text("Tabs Edit", style: AppTypography.header),
  //         Expanded(child: Container()),
  //         const SizedBox(
  //           width: 28,
  //         )
  //       ],
  //     ),
  //   );
  // }

