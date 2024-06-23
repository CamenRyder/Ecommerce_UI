import 'package:ecommerce_brand/core/routes/routes.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/domain/models/focus_product_model.dart';
import 'package:get/get.dart';

class FocusProductScreenController extends GetxController {
  RxBool isSelectedLongPress = false.obs;
  RxBool isSelectedLongPressOption = false.obs;
  RxString title = "".obs;

  List<FocusProductModel> optionFocusProduct = [
    FocusProductModel(
        name: "Save",
        icon: Assets.iconsIcFeature,
        isSelected: false,
        functionEndPress: () => Get.toNamed(Routes.saveProductIntoCollect)),
    FocusProductModel(
        name: "Share", icon: Assets.iconsIcMedia, isSelected: false),
    FocusProductModel(
        name: "Selected", icon: Assets.iconsIcTick, isSelected: false),
    FocusProductModel(name: "Hide", icon: Assets.iconsIcBan, isSelected: false),
  ];

  getTextItem(String name) {
    title.value = name;
    if (name == "Show more") {
      isSelectedLongPress.value = true;
    } else {
      isSelectedLongPressOption.value = true;
    }
  }
}
