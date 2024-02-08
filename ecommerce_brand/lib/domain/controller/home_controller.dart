import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final tabIndex = 0.obs;
  final PageController pageController = PageController(initialPage: 0);

  // late Rx<TabController> tabController;

    onTabChanged(int newTabIndex) {
    tabIndex.value = newTabIndex;
    _moveToPage(newTabIndex);
  }

  void _moveToPage(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }
}
