
import 'package:ecommerce_brand/core/routes/routes.dart';
import 'package:ecommerce_brand/screens/honme/screens/home_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppPages {
  
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.root,
      page: () => const HomeScreen(),
    ),
    
  ];
}
