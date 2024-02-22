import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/domain/models/focus_product_model.dart';
import 'package:get/get.dart';

class FocusProductScreenController extends GetxController {
  RxBool isSelectedLongPress = false.obs;
  RxString title = "".obs;

  List<FocusProductModel> optionFocusProduct = [
    FocusProductModel(
        name: "Save", icon: Assets.iconsIcFeature, isSelected: false),
    FocusProductModel(
        name: "Share", icon: Assets.iconsIcMedia, isSelected: false),
    FocusProductModel(
        name: "Selected", icon: Assets.iconsIcTick, isSelected: false),
    FocusProductModel(name: "Hide", icon: Assets.iconsIcBan, isSelected: false),
  ];

  getTextItem(String name) {
    title.value = name;
    isSelectedLongPress.value = true;
  }
}
