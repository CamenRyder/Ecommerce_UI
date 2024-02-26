import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/imageAssetsCustom.dart';
import 'package:ecommerce_brand/domain/mock/mock_product.dart';
import 'package:ecommerce_brand/screens/cart%20tracking/widgets/info_current_package_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhiteBlur,
      body: SlidingUpPanel(
        minHeight: MediaQuery.sizeOf(context).height / 2,
        maxHeight: MediaQuery.sizeOf(context).height,
        borderRadius: AppStyles.borderRadiusPanel,
        panel: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal,
                vertical: Constant.paddingVertical),
            child: Column(
              children: [
                Row(
                  children: [
                    // Icon(Icons.close),
                    Assets.iconsIcClose.svg(),
                    Expanded(child: Container()),
                    const Text(
                      "Orders",
                      style: AppTypography.bodyBold,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Messages",
                      style: AppTypography.bodyBold50per,
                    ),
                    Expanded(child: Container()),
                    Assets.iconsIcResearch.svg()
                  ],
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(top: 18, left: 12),
                      child: ListView.builder(
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      MockProduct.listCartTrackingProduct[index]
                                              .title ??
                                          "Title",
                                      style: AppTypography.bodyNormal16Black,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    // Text(
                                    //   "Current Order -  Arrival est. Apr 14",
                                    //   style: AppTypography.bodyNormal,
                                    // )
                                    MockProduct
                                        .listCartTrackingProduct[index].status
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: MockProduct.listCartTrackingProduct.length,
                      )),
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: Constant.paddingHorizontal,
              vertical: Constant.paddingVertical),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Icons.close),
                  ),
                  Expanded(child: Container()),
                  Assets.iconsIcFile.svg(color: Colors.black),
                  Expanded(child: Container()),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Container(),
                  )
                ],
              ),
              const InfoCurrentPackageWidget(),
            ],
          ),
        )),
      ),
    );
  }
}

/*

 Container(
                        margin: const EdgeInsets.only(top: 28),
                        height: 60,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 24),
                              child: CustomImage3(
                                radius: 12,
                                path: Assets.imagesMockImage07.path,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bershka Mom Jeans",
                                  style: AppTypography.bodyNormal16Black,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Current Order -  Arrival est. Apr 14",
                                  style: AppTypography.bodyNormal,
                                )
                              ],
                            )
                          ],
                        ),
                      ),

*/
