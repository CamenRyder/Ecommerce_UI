import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';

import 'package:get/get.dart';

class EditTabsScreenController extends GetxController {
  Rx<List<TabsEditsModel>> tabsElementModel = Rx<List<TabsEditsModel>>(
      ListComponentTabConstant.listQuickFilterHome.obs);

  Rx<int> selectedElement = 0.obs;
  RxBool unfollowMutilple = false.obs;
  RxBool isShowDiabledTabs = false.obs;

  RxBool showBottomFloatingActionButton = false.obs;

  initTabsElementModel() {
    // init when construct homeScreen
    tabsElementModel.value = ListComponentTabConstant.listQuickFilterHome.obs;
  }

  void hideTabsFromFeed() {
    isShowDiabledTabs.value = true;
  }

  List<TabsEditsModel> getTabsElementSubmit() {
    return tabsElementModel.value.where((e) {
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
    return tabsElementModel.value.where((e) {
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
    tabsElementModel.value.forEach((element) {
      element.isChoice = false;
    });
    unfollowMutilple.value = true;
    selectedElement.value = 0;
  }

  setChoiceElement(int index) {
    tabsElementModel.value[index].isChoice =
        !tabsElementModel.value[index].isChoice;
    int selectedLocal = 0;
    tabsElementModel.value.forEach((e) => e.isChoice ? selectedLocal++ : null);
    unfollowMutilple.value = false;
    selectedLocal == 0
        ? selectedElement.value = 0
        : selectedElement.value = selectedLocal;
    selectedLocal > 0
        ? showBottomFloatingActionButton.value = true
        : showBottomFloatingActionButton.value = false;
  }

  void changeTabsArrange({required List<TabsEditsModel> items}) {
    int length = tabsElementModel.value.length - 1;
    tabsElementModel.value.removeRange(1, length);
    tabsElementModel.value.insertAll(1, items);
  }
}
