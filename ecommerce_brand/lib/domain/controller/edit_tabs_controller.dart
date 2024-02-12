import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';
import 'package:get/get.dart';

class EditTabsScreenController extends GetxController {
   late  Rx<List<TabsEditsModel>> tabsElementModel ;

  initTabsElementModel() {
    tabsElementModel.value = ListComponentTabConstant.listQuickFilterHome.obs;
  }
}
