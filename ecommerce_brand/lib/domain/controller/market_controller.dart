import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketScreenController extends GetxController {
  late Rx<TabController> tabMarketController;

  final RxBool isFadeAnimationBodySlding = false.obs;
  final RxBool isDragPanel = true.obs;

  void initTabController(TickerProvider provider) {
    tabMarketController = Rx(
      TabController(
          length: getTabBarLength(), vsync: provider, initialIndex: 0),
    );
    isFadeAnimationBodySlding.value = false;
    isDragPanel.value = true;
  }

  int getTabBarLength() => DumpData.listTabMarket.length;

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
