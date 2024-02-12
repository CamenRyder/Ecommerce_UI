import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final tabIndex = 0.obs;
  final PageController pageController = PageController(initialPage: 0);
  late Rx<TabController> tabController;

  void initTabController(TickerProvider provider) {
    tabController = Rx(
      TabController(
          length: getTabBarLength(), vsync: provider, initialIndex: 0),
    );
  }

  int getTabBarLength() => ListComponentTabConstant.listQuickFilterHome.length;
  // late Rx<TabController> tabController;

  onTabChanged(int newTabIndex) {
    tabIndex.value = newTabIndex;
    _moveToPage(newTabIndex);
  }

  List<Widget> tabViewHome() {
    return ListComponentTabConstant.listQuickFilterHome.map((e) {
      return Tab(text: e.name);
    }).toList();
  }

  void _moveToPage(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }
}
