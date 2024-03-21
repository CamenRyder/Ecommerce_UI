import 'dart:ffi';

import 'package:ecommerce_brand/domain/controller/market_controller.dart';
import 'package:ecommerce_brand/screens/market/screen/page/body_sliding_market_screen.dart';
import 'package:ecommerce_brand/screens/market/screen/page/panel_sliding_market_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MarketScreen();
  }
}

class _MarketScreen extends State<MarketScreen>
    with SingleTickerProviderStateMixin {
  final controller = Get.find<MarketScreenController>();
  @override
  void initState() {
    super.initState();
    controller.initTabController(this);
    controller.initScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SlidingUpPanel(
        boxShadow: null,
        maxHeight: controller.isFullScreen.value
            ? MediaQuery.sizeOf(context).height
            : MediaQuery.sizeOf(context).height - 255,
        minHeight: MediaQuery.sizeOf(context).height - 420,
        isDraggable: controller.isDragPanel.value,
        onPanelSlide: (position) {
          position > 0.2
              ? controller.isFadeAnimationBodySlding.value = true
              : controller.isFadeAnimationBodySlding.value = false;
        },
        onPanelOpened: controller.lockDragablePanel,
        body: const BodySldingMarketScreen(),
        panel: PanelSlidingMarketScreen(),
      ),
    );
  }
}
