import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/imageAssetsCustom.dart';
import 'package:ecommerce_brand/domain/controller/market_controller.dart';
import 'package:flutter/material.dart';
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
              Assets.iconsIcArrowNext.svg(
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.dst))
            ],
          ),
        ),
        listStores(),
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
              Assets.iconsIcArrowNext.svg(
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.dst))
            ],
          ),
        ),
        listSales(),
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
              Assets.iconsIcArrowNext.svg(
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.dst))
            ],
          ),
        ),
        listCollection(),
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
              const Text("Delivery tags", style: AppTypography.bodyLarge22B),
              Assets.iconsIcArrowNext.svg(
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.dst))
            ],
          ),
        ),
        SizedBox(
          width: 400,
          height: 240,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 26),
            scrollDirection: Axis.horizontal,
            itemCount: controller.getListDeliveryTagsLength(),
            itemBuilder: (context, index) {
              return Container(
                  padding: const EdgeInsets.all(4),
                  width: MediaQuery.sizeOf(context).width * 3 / 7,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 3 / 7,
                        height: 230,
                        child: Assets.iconsIcTag.svg(
                          color: AppColors.primaryTag,
                        ),
                      ),
                      Positioned(
                          left: 80,
                          top: 15,
                          child: Container(
                            width: 18,
                            height: 18,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.backgroundWhite),
                          )),
                      Positioned(
                          left: 40,
                          top: 50,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: controller.listDeliveryTags[index].image
                                    .image(),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: const Text(
                                  "Sustainable",
                                  style: AppTypography.bodyNormal15B,
                                ),
                              )
                            ],
                          ))
                    ],
                  ));
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
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 0.5, color: AppColors.textGrey)),
                    child: CircleAvatar(
                      backgroundColor: AppColors.backgroundWhite,
                      child: Assets.imagesAvtLacoste.image(),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lacoste", style: AppTypography.bodyNormal15Black),
                      SizedBox(height: 7),
                      Text("Store of the week",
                          style: AppTypography.bodyNormal),
                    ],
                  )
                ],
              ),
              Assets.iconsIcArrowNext.svg(
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.dst))
            ],
          ),
        ),
        listStoreOfWeek()
      ],
    );
  }

  Widget listStoreOfWeek() {
    return SizedBox(
      width: 400,
      height: 300,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 26),
        scrollDirection: Axis.horizontal,
        itemCount: controller.getStoresOfWeeksLength(),
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
                  path: controller.storeOfWeeks[index].image.path,
                ),
                Text(
                  "${controller.storeOfWeeks[index].name}",
                  style: AppTypography.bodyNormal16B500,
                ),
                Row(
                  children: [
                    controller.storeOfWeeks[index].oldPrice != null
                        ? Stack(
                            children: [
                              Text(
                                "\$${controller.storeOfWeeks[index].oldPrice}",
                                style: AppTypography.bodyBoldlGrey,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                width: 40,
                                height: 1,
                                color: AppColors.textGrey,
                              ),
                            ],
                          )
                        : Container(),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text(
                        "\$${controller.storeOfWeeks[index].price}",
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
    );
  }

  Widget listCollection() {
    return SizedBox(
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
                          child: controller.colectionsElement[index].iconBrand
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
    );
  }

  Widget listSales() {
    return SizedBox(
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
    );
  }

  Widget listStores() {
    return SizedBox(
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
                          child:
                              controller.newStoresElement[index].icons.image()),
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
    );
  }
}
