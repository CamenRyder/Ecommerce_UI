import 'package:ecommerce_brand/core/routes/routes.dart';
import 'package:ecommerce_brand/screens/cart%20tracking%20detail/screen/cart_tracking_detail_screen.dart';
import 'package:ecommerce_brand/screens/cart%20tracking/screens/cart_tracking_screen.dart';
import 'package:ecommerce_brand/screens/edit%20tabs/screens/edit_tabs_screen.dart';
import 'package:ecommerce_brand/screens/focus%20product/screen/focus_product_screen.dart';
import 'package:ecommerce_brand/screens/home/screens/home_screen.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.root,
      showCupertinoParallax: false,
      transition: Transition.fadeIn,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.editTabs,
      showCupertinoParallax: false,
      transition: Transition.fadeIn,
      page: () => const EditTabsScreen(),
    ),
    GetPage(
      name: Routes.focusProduct,
      showCupertinoParallax: false,
      transition: Transition.fadeIn,
      page: () => FocusProductScreen(
        items: Get.arguments,
      ),
    ),
    GetPage(
      name: Routes.cartTracking,
      showCupertinoParallax: false,
      transition: Transition.fadeIn,
      page: () => const CartTrackingScreen(),
    ),
    GetPage(
      name: Routes.cartTrackingDetail,
      showCupertinoParallax: false,
      transition: Transition.fadeIn,
      page: () => CartTrackingDetailScreen(),
    ),
  ];
}
