import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/wrapper_icon_svg.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
import 'package:ecommerce_brand/screens/edit%20tabs/widgets/body_edits_tabs_screen.dart';
import 'package:ecommerce_brand/screens/edit%20tabs/widgets/bottom_sheet_edits_tabs.dart';
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
  // late List<TabsEditsModel> _items;
  final _controller = Get.find<EditTabsScreenController>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          backgroundColor: AppColors.backgroundWhite,
          appBar: AppBar(
            elevation: 0,
            centerTitle: _controller.selectedElement.value == 0 ? true : false,
            backgroundColor: _controller.selectedElement.value == 0
                ? AppColors.backgroundWhite
                : AppColors.primary,
            title: _controller.selectedElement.value == 0
                ? const Text("Tabs Edit", style: AppTypography.header)
                : Text("${_controller.selectedElement.value} Selected",
                    style: AppTypography.headerLight),
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.close,
                size: 28,
                color: _controller.selectedElement.value == 0
                    ? AppColors.black
                    : AppColors.backgroundWhite,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: floatingActionButton(),
          body: const BodyEditsScreen()),
    );
  }

  Widget floatingActionButton() {
    return Obx(() {
      return AnimatedSlide(
        duration: const Duration(milliseconds: 200),
        offset: _controller.showBottomFloatingActionButton.value
            ? Offset.zero
            : const Offset(0, 2),
        child: AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: _controller.showBottomFloatingActionButton.value ? 1 : 0,
            child: Container(
              padding: const EdgeInsets.all(7),
              margin: const EdgeInsets.only(bottom: 20),
              height: 65,
              width: 65,
              decoration: AppStyles.borderSideFloatingActionButton,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isDismissible: false,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (_) {
                        return BottomSheetEditTabs(
                          textChangeTabs: "Mutilple",
                          changeTabs: () {
                            print("aduu mutilple sellin?");
                          },
                          withBottomSheet: () {
                            _controller.setUntickElement();
                            Get.back();
                          },
                        );
                      });
                },
                child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: AppStyles.borderComponentFloatingActionButton,
                    child: WrapperIconSVG(
                      icon: Assets.iconsIcMoreDots,
                      colors: Colors.black,
                    )),
              ),
            )),
      );
    });
  }
}
