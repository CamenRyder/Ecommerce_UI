import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/imageAssetsCustom.dart';
import 'package:ecommerce_brand/domain/controller/market_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class FeaturesTabView extends StatelessWidget {
  FeaturesTabView({super.key});

  final controller = Get.find<MarketScreenController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      // physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          child: Assets.imagesMarketHeaderView.image(),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: Constant.paddingVertical,
            bottom: 30,
            left: Constant.paddingHorizontal,
            right: Constant.paddingHorizontal,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("New Stores", style: AppTypography.bodyLarge22B),
              Assets.iconsIcArrowNext.svg(color: Colors.black)
            ],
          ),
        ),
        SizedBox(
          width: 400,
          height: 215,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 26),
            scrollDirection: Axis.horizontal,
            itemCount: controller.getListViewNewStoresLength(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(4),
                width: MediaQuery.sizeOf(context).width * 3 / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CustomImage3(
                          fit: BoxFit.cover,
                          radius: 12,
                          height: 150,
                          width: MediaQuery.sizeOf(context).width * 3 / 5,
                          path: controller.newStoresElement[index].image.path,
                        ),
                        Positioned(
                          bottom: 7,
                          left: 7,
                          child: CircleAvatar(
                              radius: 20,
                              backgroundColor: AppColors.backgroundWhite,
                              child: controller.newStoresElement[index].icons
                                  .image()),
                        )
                      ],
                    ),
                    Text(
                      "${controller.newStoresElement[index].brandName}",
                    ),
                    Text(
                      "${controller.newStoresElement[index].typical}",
                      style: AppTypography.bodyNormal,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 40,
            bottom: 20,
            left: Constant.paddingHorizontal,
            right: Constant.paddingHorizontal,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Product on sales", style: AppTypography.bodyLarge22B),
              Assets.iconsIcArrowNext.svg(color: Colors.black)
            ],
          ),
        ),
        SizedBox(
          width: 400,
          height: 300,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 26),
            scrollDirection: Axis.horizontal,
            itemCount: controller.getListViewProductOnSalesLength(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(4),
                width: MediaQuery.sizeOf(context).width * 3 / 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImage3(
                      fit: BoxFit.cover,
                      radius: 12,
                      path: controller.productsOnSales[index].image.path,
                    ),
                    Text(
                      "${controller.productsOnSales[index].name}",
                      style: AppTypography.bodyNormal16B500,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Text(
                              "\$${controller.productsOnSales[index].oldPrice}",
                              style: AppTypography.bodyBoldlGrey,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              width: 40,
                              height: 1,
                              color: AppColors.textGrey,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text(
                            "\$${controller.productsOnSales[index].price}",
                            style: AppTypography.bodyBoldlRed,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 40,
            bottom: 20,
            left: Constant.paddingHorizontal,
            right: Constant.paddingHorizontal,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Fresh collections",
                  style: AppTypography.bodyLarge22B),
              Assets.iconsIcArrowNext.svg(color: Colors.black)
            ],
          ),
        ),
        SizedBox(
          width: 400,
          height: 240,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 26),
            scrollDirection: Axis.horizontal,
            itemCount: controller.getListViewFreshCollectionLength(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(4),
                width: MediaQuery.sizeOf(context).width * 3 / 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CustomImage3(
                          fit: BoxFit.cover,
                          radius: 12,
                          height: 180,
                          width: MediaQuery.sizeOf(context).width * 3 / 5,
                          path: controller.colectionsElement[index].image.path,
                        ),
                        Positioned(
                          bottom: 7,
                          left: 7,
                          child: CircleAvatar(
                              radius: 20,
                              backgroundColor: AppColors.backgroundWhite,
                              child: controller
                                  .colectionsElement[index].iconBrand
                                  .image()),
                        )
                      ],
                    ),
                    Text(
                      "${controller.colectionsElement[index].name}",
                      style: AppTypography.bodyNormal15B,
                    ),
                    Text(
                      "${controller.colectionsElement[index].brandName}",
                      style: AppTypography.bodyNormal,
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
