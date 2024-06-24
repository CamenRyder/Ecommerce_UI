import 'package:ecommerce_brand/core/routes/routes.dart';
import 'package:ecommerce_brand/core/utils/helper.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/domain/models/focus_product_model.dart';
import 'package:ecommerce_brand/domain/models/product_model.dart';
import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/bottom_sheet_sharing_widget.dart';
import 'package:flutter/material.dart';
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
        functionEndPress: (Product item, context) =>
            Get.toNamed(Routes.saveProductIntoCollect, arguments: item)),
    FocusProductModel(
        name: "Share",
        icon: Assets.iconsIcMedia,
        isSelected: false,
        functionEndPress: (Product item, context) => {
              showModalBottomSheet(
                  enableDrag: false,
                  isDismissible: false,
                  context: context,
                  builder: (context) => BottomSheetSharingWidget())
            }),
    FocusProductModel(
        name: "Selected",
        icon: Assets.iconsIcTick,
        isSelected: false,
        functionEndPress: (Product item, context) =>
            {animationToastLoadingFail(context: context)}),
    FocusProductModel(
        name: "Hide",
        icon: Assets.iconsIcBan,
        isSelected: false,
        functionEndPress: (Product item, context) =>
            {animationToastLoadingFail(context: context)}),
  ];

  resetSelected() {
    optionFocusProduct.forEach((e) => e.isSelected = false);
  }

  getTextItem(String name) {
    title.value = name;
    if (name == "Show more") {
      isSelectedLongPress.value = true;
    } else {
      isSelectedLongPressOption.value = true;
    }
  }
}
