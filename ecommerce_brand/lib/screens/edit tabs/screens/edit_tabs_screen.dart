import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
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
  late final List<dynamic> _items;
  final _controller = Get.find<EditTabsScreenController>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = _controller.tabsElementModel.value;
  }

  @override
  Widget build(BuildContext context) {
    // final ColorScheme colorScheme = Theme.of(context).colorScheme;
    // final Color oddItemColor = Colors.lime.shade100;
    // final Color evenItemColor = Colors.deepPurple.shade100;

    // final List<Card> cards = <Card>[
    //   for (int index = 0; index < _items.length; index += 1)
    //     Card(
    //       key: Key('$index'),
    //       color: _items[index].isOdd ? oddItemColor : evenItemColor,
    //       child: SizedBox(
    //         height: 80,
    //         child: Center(
    //           child: Text('Card ${_items[index]}'),
    //         ),
    //       ),
    //     ),
    // ];

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
                            color: index % 2 == 0
                                ? AppColors.backgroundWhite
                                : AppColors.primaryDecoration,
                            child: GestureDetector(
                              onTap: () {
                                print("Tap Tap index: ${_items[index]}");
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.drag_handle,
                                    color: AppColors.textGrey,
                                    size: 32,
                                  ),
                                  Container(
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
                                            width: 1)),
                                    child: CircleAvatar(
                                      radius: 24.0,
                                      backgroundColor: Colors.transparent,
                                      child: Assets.imagesAvtAddidas.image(),
                                    ),
                                  ),
                                  const Expanded(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Lacoste",
                                        style: AppTypography.bodyBold,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text("abc",
                                          style: AppTypography.bodyNormal)
                                    ],
                                  )),
                                  Assets.iconsIcMoreDots
                                      .svg(height: 30, color: AppColors.black)
                                ],
                              ),
                            ))
                    ],
                    onReorder: (int oldIndex, int newIndex) {
                      setState(() {
                        if (oldIndex < newIndex) {
                          newIndex -= 1;
                        }
                        final item = _items.removeAt(oldIndex);
                        _items.insert(newIndex, item);
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

