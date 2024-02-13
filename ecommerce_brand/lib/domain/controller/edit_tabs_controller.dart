import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';

import 'package:get/get.dart';

class EditTabsScreenController extends GetxController {
  Rx<List<TabsEditsModel>> tabsElementModel = Rx<List<TabsEditsModel>>(
      ListComponentTabConstant.listQuickFilterHome.obs);

  initTabsElementModel() {
    // init when construct homeScreen
    tabsElementModel.value = ListComponentTabConstant.listQuickFilterHome.obs;
  }

  List<TabsEditsModel> getTabsElementSubmit() {
    return tabsElementModel.value.where((e) {
      if (e.index == 0 || e.index == 10) {
        return false;
      }
      return true;
    }).toList();
  }

  setChoiceElement(int index) {
    tabsElementModel.value[index].isChoice =
        !tabsElementModel.value[index].isChoice;
  }

  void changeTabsArrange() {}
}
