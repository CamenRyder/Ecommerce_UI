import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/domain/controller/save_into_collection_controller.dart';
import 'package:ecommerce_brand/domain/models/product_model.dart';

import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/body_save_into_collection_widget.dart';
import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/footer_sliding_panel_widget.dart';
import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/panel_sliding_panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SaveIntoCollectionScreen extends StatefulWidget {
  const SaveIntoCollectionScreen({super.key, required this.product});
  final Product product;
  @override
  State<SaveIntoCollectionScreen> createState() =>
      _SaveIntoCollectionScreenState();
}

class _SaveIntoCollectionScreenState extends State<SaveIntoCollectionScreen> {
  final controller = Get.put(SaveIntoCollectionController());
  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: AppColors.backgroundWhiteGrey,
      body: Obx(
        () => SlidingUpPanel(
            footer: const FooterSlidingPanelWidget(),
            onPanelClosed: null,
            onPanelSlide: (position) {
              if (position > 0.99) {
                controller.isExpand.value = true;
              } else {
                controller.isExpand.value = false;
              }
            },
            boxShadow: null,
            color:
                controller.isExpand.value ? Colors.white : Colors.transparent,
            minHeight: heightScreen / 1.60,
            maxHeight: heightScreen,
            borderRadius: AppStyles.borderRadiusPanel,
            panelBuilder: (sc) {
              return PanelSlidingPanelWidget(
                scrollController: sc,
              );
            },
            body: BodySaveIntoCollectionWidget(
              product: widget.product,
            )),
      ),
    );
  }
}
