import 'package:ecommerce_brand/core/routes/routes.dart';
import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EditTabsScreenController extends GetxController {
  Rx<List<TabsEditsModel>> tabsElementModelTabsEdit = Rx<List<TabsEditsModel>>(
      ListComponentTabConstant.listQuickFilterHome.obs);
  Rx<List<TabsEditsModel>> tabsElementModelShow = Rx<List<TabsEditsModel>>(
      ListComponentTabConstant.listQuickFilterHome.obs);

  Rx<int> selectedElement = 0.obs;
  RxBool unfollowMutilple = false.obs;
  RxBool isShowDiabledTabs = false.obs;

  RxBool showBottomFloatingActionButton = false.obs;

  initTabsElementModel() {
    // init when construct homeScreen
    tabsElementModelTabsEdit.value =
        ListComponentTabConstant.listQuickFilterHome.obs;
    tabsElementModelShow.value = tabsElementModelTabsEdit.value;
  }

  void hideTabsFromFeed(int index) {
    isShowDiabledTabs.value = true;
    tabsElementModelTabsEdit.value[index].isShow = false;
  }

  List<TabsEditsModel> getTabsElementSubmit() {
    return tabsElementModelTabsEdit.value.where((e) {
      if (e.index == 0 || e.index == 10) {
        return false;
      }
      if (e.isShow == false) {
        return false;
      }
      return true;
    }).toList();
  }

  List<TabsEditsModel> getTabsElementUnsubmit() {
    return tabsElementModelTabsEdit.value.where((e) {
      if (e.index == 0 || e.index == 10) {
        return false;
      }
      if (e.isShow != false) {
        return false;
      }
      return true;
    }).toList();
  }

  setUntickElement() {
    tabsElementModelTabsEdit.value.forEach((element) {
      element.isChoice = false;
    });
    unfollowMutilple.value = true;
    selectedElement.value = 0;
    showBottomFloatingActionButton.value = false;
  }

  setChoiceElement(int index) {
    tabsElementModelTabsEdit.value[index].isChoice =
        !tabsElementModelTabsEdit.value[index].isChoice;
    int selectedLocal = 0;
    tabsElementModelTabsEdit.value
        .forEach((e) => e.isChoice ? selectedLocal++ : null);
    unfollowMutilple.value = false;
    selectedLocal == 0
        ? selectedElement.value = 0
        : selectedElement.value = selectedLocal;
    selectedLocal > 0
        ? showBottomFloatingActionButton.value = true
        : showBottomFloatingActionButton.value = false;
  }

  void changeTabsArrange({required List<TabsEditsModel> items}) {
    int length = tabsElementModelTabsEdit.value.length - 1;
    tabsElementModelTabsEdit.value.removeRange(1, length);
    tabsElementModelTabsEdit.value.insertAll(1, items);
    tabsElementModelShow.value = tabsElementModelTabsEdit.value;
  }

  List<Widget> tabViewHome() {
    List<TabsEditsModel> items = tabsElementModelShow.value;
    final itemsWasShow =
        items.where((element) => element.isShow == true).toList();
    print("Tabs view home: $itemsWasShow");
    return itemsWasShow.map((e) {
      if (e.index == 10) {
        return GestureDetector(
          onTap: () {
            Get.toNamed(Routes.editTabs);
          },
          child: SizedBox(
            height: 22,
            width: 22,
            child: Assets.iconsIcSetting
                .svg(height: 18, width: 18, color: AppColors.textGrey),
          ),
        );
      }
      return Tab(text: e.name);
    }).toList();
  }
}
