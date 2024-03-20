import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/domain/mock/mock_product.dart';
import 'package:ecommerce_brand/domain/mock/mock_store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketScreenController extends GetxController {
  late Rx<TabController> tabMarketController;

  final RxBool isFadeAnimationBodySlding = false.obs;
  final RxBool isDragPanel = true.obs;
  final newStoresElement = MockStore.stores;
  final productsOnSales = MockProduct.listProductSaleOnMarket;
  final colectionsElement = MockProduct.listProductFreshCollections;
  void initTabController(TickerProvider provider) {
    tabMarketController = Rx(
      TabController(
          length: getTabBarLength(), vsync: provider, initialIndex: 0),
    );
    isFadeAnimationBodySlding.value = false;
    isDragPanel.value = true;
  }

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

  lockDragablePanel() => isDragPanel.value = false;
}
