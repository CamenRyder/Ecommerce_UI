import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/domain/controller/cart_tracking_controller.dart';
import 'package:ecommerce_brand/screens/cart%20tracking/widgets/body_widget.dart';
import 'package:ecommerce_brand/screens/cart%20tracking/widgets/panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CartTrackingScreen extends StatefulWidget {
  const CartTrackingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CartTrackingScreen();
  }
}

class _CartTrackingScreen extends State<CartTrackingScreen> {
  final controller = Get.put(CartTrackingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhiteBlur,
      body: Obx(() => SlidingUpPanel(
            onPanelClosed: null,
            onPanelSlide: (position) {
              // print("Postsion: $position");
              if (position > 0.99) {
                controller.isExpand.value = true;
              } else {
                controller.isExpand.value = false;
              }
            },
            boxShadow: null,
            color:
                controller.isExpand.value ? Colors.white : Colors.transparent,
            minHeight: MediaQuery.sizeOf(context).height / 1.8,
            maxHeight: MediaQuery.sizeOf(context).height,
            borderRadius: AppStyles.borderRadiusPanel,
            panel: PanelCartTrackingWidget(),
            body: const BodyCartTrackingWidget(),
          )),
    );
  }
}
