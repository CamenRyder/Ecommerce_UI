import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';

class StringUtils {
  static String capitalize(String text) {
    // Viết hoa ký tự đầu tiên của chuỗi
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1);
  }

  static String removeSpaces(String text) {
    // Xóa các khoảng trắng trong chuỗi
    return text.replaceAll(' ', '');
  }
}

class Constant {
  static const double paddingVertical = 8;
  static const double paddingHorizontal = 24;
  static const double paddingScreen = 16;
  static const double radiusCircle = 24;
  static const double radius = 12;
  static const durationAnimateSlide = Duration(milliseconds: 300);
  static const double marginTopForHeader = 50;
  static const int margin = 16;
}

class AppStringConstant {
  static const String titleName = "MemeSuper";
  static const String editImage = "Edit photo";
}

class ListComponentConstant {
  static final listQuickFilterHome = <TabsEditsModel>[
    TabsEditsModel(
        name: "All",
        image: null,
        index: 0,
        tag: "Tag",
        isChoice: false,
        isShow: true),
    TabsEditsModel(
        name: "Sustainable",
        image: Assets.iconsIcTag,
        index: 1,
        tag: "Tag",
        isChoice: false,
        isShow: true),
    TabsEditsModel(
        name: "Lacoste",
        image: Assets.imagesAvtLacoste,
        index: 2,
        tag: "Store",
        isChoice: false,
        isShow: true),
    TabsEditsModel(
        name: "Adidas",
        image: Assets.imagesAvtAddidas,
        index: 3,
        tag: "Store",
        isChoice: false,
        isShow: true),
    TabsEditsModel(
        name: "Vintage",
        image: Assets.iconsIcTag,
        index: 4,
        tag: "Tag",
        isChoice: false,
        isShow: true),
    TabsEditsModel(
        name: "Levi's",
        image: Assets.imagesAvtLevi,
        index: 5,
        tag: "Store",
        isChoice: false,
        isShow: true),
    TabsEditsModel(
        name: "Setting",
        image: Assets.imagesAvtLevi,
        index: 10,
        tag: "Store",
        isChoice: false,
        isShow: true),
  ];  
}
