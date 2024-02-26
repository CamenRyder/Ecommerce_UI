import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/imageAssetsCustom.dart';
import 'package:ecommerce_brand/domain/controller/cart_tracking_controller.dart';
import 'package:ecommerce_brand/domain/mock/mock_product.dart';
import 'package:ecommerce_brand/screens/cart%20tracking/widgets/header_expand_widget.dart';
import 'package:ecommerce_brand/screens/cart%20tracking/widgets/header_scale_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanelCartTrackingWidget extends StatelessWidget {
  PanelCartTrackingWidget({super.key});

  final controller = Get.find<CartTrackingController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Center(
            child: Assets.iconsIcRulerRack.svg(color: Colors.white, height: 6),
          ),
        ),
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.backgroundWhite,
                  borderRadius: AppStyles.borderRadiusPanel),
              padding: const EdgeInsets.symmetric(
                  horizontal: Constant.paddingHorizontal,
                  vertical: Constant.paddingVertical),
              child: Obx(
                () => Column(
                  children: [
                    controller.isExpand.value
                        ? Container()
                        : const SizedBox(
                            height: 30,
                          ),
                    controller.isExpand.value
                        ? const HeaderExpandedWidget()
                        : const HeaderScaleWidget(),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(
                              top: controller.isExpand.value ? 0 : 12 /* 12 */,
                              left: 12),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (_, index) {
                              return Container(
                                margin: const EdgeInsets.only(top: 28),
                                height: 60,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 24),
                                      child: CustomImage3(
                                        radius: 12,
                                        path: MockProduct
                                            .listCartTrackingProduct[index]
                                            .image
                                            .path,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          MockProduct
                                                  .listCartTrackingProduct[
                                                      index]
                                                  .title ??
                                              "Title",
                                          style:
                                              AppTypography.bodyNormal16Black,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        MockProduct
                                            .listCartTrackingProduct[index]
                                            .status
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                            itemCount:
                                MockProduct.listCartTrackingProduct.length,
                          )),
                    )
                  ],
                ),
              )),
        )
      ]),
    );
  }
}
