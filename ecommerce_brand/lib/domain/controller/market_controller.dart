import 'dart:async';

import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:ecommerce_brand/domain/mock/mock_product.dart';
import 'package:ecommerce_brand/domain/mock/mock_store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketScreenController extends GetxController {
  late Rx<TabController> tabMarketController;

  final RxBool isFadeAnimationBodySlding = false.obs;
  final RxBool isDragPanel = true.obs;
  final newStoresElement = MockStore.stores;
  final isExpandNotify = false.obs;
  final productsOnSales = MockProduct.listProductSaleOnMarket;
  final colectionsElement = MockProduct.listProductFreshCollections;
  final listDeliveryTags = MockProduct.listDeliveryTags;
  final storeOfWeeks = MockProduct.storeOfWeeks;
  final RxBool isFullScreen = false.obs;
  final RxBool isPhysicScrollMarket = false.obs;
  late ScrollController scrollController;

  void initScrollController() {
    final homeController = Get.find<HomeScreenController>();
    scrollController = homeController.scrollController;
  }

  void initTabController(TickerProvider provider) {
    tabMarketController = Rx(
      TabController(
          length: getTabBarLength(), vsync: provider, initialIndex: 0),
    );
    Timer.periodic(const Duration(seconds: 2), (timer) {
      isExpandNotify.value = !isExpandNotify.value;
    });
    isFadeAnimationBodySlding.value = false;
    isDragPanel.value = true;
    isPhysicScrollMarket.value = false;
    isFullScreen.value = false;
  }

  int getListDeliveryTagsLength() => MockProduct.listDeliveryTags.length;
  int getStoresOfWeeksLength() => MockProduct.storeOfWeeks.length;

  int getListViewNewStoresLength() => MockStore.stores.length;

  int getTabBarLength() => DumpData.listTabMarket.length;

  int getListViewFreshCollectionLength() =>
      MockProduct.listProductFreshCollections.length;

  int getListViewProductOnSalesLength() =>
      MockProduct.listProductSaleOnMarket.length;

  List<Widget> tabViews() {
    List<String> data = DumpData.listTabMarket;
    return data.map((element) {
      return Tab(
        text: element,
      );
    }).toList();
  }

  lockDragablePanel() {
    isDragPanel.value = false;
    isPhysicScrollMarket.value = true;
    isFullScreen.value = true;
  }
}
