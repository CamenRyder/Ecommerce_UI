import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';

import 'package:get/get.dart';

class EditTabsScreenController extends GetxController {
  Rx<List<TabsEditsModel>> tabsElementModelTabsEdit =
      Rx<List<TabsEditsModel>>(ListComponentConstant.listQuickFilterHome.obs);
  Rx<List<TabsEditsModel>> tabsElementModelShow =
      Rx<List<TabsEditsModel>>(ListComponentConstant.listQuickFilterHome.obs);
  Rx<List<TabsEditsModel>> tabsElementModelDisable =
      Rx<List<TabsEditsModel>>([]);

  Rx<int> selectedElement = 0.obs;
  RxBool unfollowMutilple = false.obs;
  RxBool isShowDiabledTabs = false.obs;

  RxBool showBottomFloatingActionButton = false.obs;

  initTabsElementModel() {
    // init when construct homeScreen
    tabsElementModelTabsEdit.value =
        ListComponentConstant.listQuickFilterHome.obs;
    tabsElementModelShow.value = tabsElementModelTabsEdit.value;
  }

  void hideTabsFromFeed(int index) {
    isShowDiabledTabs.value = true;
    tabsElementModelTabsEdit.value[index + 1].isShow = false;
    print("Editing controller ${tabsElementModelTabsEdit.value}");
    tabsElementModelDisable.value
        .add(tabsElementModelTabsEdit.value[index + 1]);
    tabsElementModelShow.value = getTabsElementShow();
    tabsElementModelTabsEdit.value = getTabsElementShow();
  }

  void hideTabsDiablog() {
    selectedElement.value = 0;
    showBottomFloatingActionButton.value = false;
    tabsElementModelTabsEdit.value.removeWhere((element) {
      if (element.isChoice) {
        tabsElementModelDisable.value.add(element);
      }
      return element.isChoice == true;
    });
    tabsElementModelShow.value = getTabsElementShow();
    tabsElementModelTabsEdit.value = getTabsElementShow();
    tabsElementModelDisable.value.forEach((element) {
      element.isChoice = false;
    });
  }

  List<TabsEditsModel> getTabsElementSubmit() {
    print("Go hehre:");
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

  List<TabsEditsModel> getTabsElementShow() {
    return tabsElementModelTabsEdit.value.where((e) {
      if (e.isShow == false) {
        return false;
      }
      return true;
    }).toList();
  }

  List<TabsEditsModel> getTabsElementUnsubmit() {
    return tabsElementModelDisable.value;
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

  void addActiveTabs(TabsEditsModel itemsDisable) {
    itemsDisable.isShow = true;
    int index = tabsElementModelTabsEdit.value.length - 1;
    tabsElementModelTabsEdit.value.insert(index, itemsDisable);
    tabsElementModelShow.value = tabsElementModelTabsEdit.value;
    tabsElementModelDisable.value.remove(itemsDisable);
  }
}
