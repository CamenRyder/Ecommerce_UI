import 'package:ecommerce_brand/core/routes/routes.dart';
import 'package:ecommerce_brand/screens/edit%20tabs/screens/edit_tabs_screen.dart';
import 'package:ecommerce_brand/screens/focus%20product/screen/focus_product_screen.dart';
import 'package:ecommerce_brand/screens/home/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.root,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.editTabs,
      page: () => const EditTabsScreen(),
    ),
      GetPage(
      name: Routes.focusProduct,
      page: () => FocusProductScreen(items: Get.arguments,),
    ),
  ];
}
