import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/models/cart_tracking_product_model.dart';
import 'package:ecommerce_brand/domain/models/product_model.dart';
import 'package:flutter/material.dart';

class MockProduct {
  static List<Product> listProductHomeFeed = [
    Product(
        name: "Top Lacoste SPORT...",
        price: 49.9,
        image: Assets.imagesMockImage01,
        brandName: null),
    Product(
        name: "Lacoste x Polaroid",
        price: null,
        image: Assets.imagesMockImage02,
        brandName: Assets.imagesAvtLacoste.image()),
    Product(
        name: "Bershka Mom Jeans",
        price: 34.3,
        image: Assets.imagesMockImage03,
        brandName: null),
    Product(
        name: "Adidas Sport Tights",
        price: 49,
        image: Assets.imagesMockImage04,
        brandName: Assets.imagesAvtAddidas.image()),
    Product(
        name: "Addidas Sport 2021",
        price: 212.6,
        image: Assets.imagesMockImage06,
        brandName: Assets.imagesAvtAddidas.image()),
    Product(
        name: "Zara Cropped Top",
        price: 20.1,
        image: Assets.imagesMockImage05,
        brandName: null),
    Product(
        name: "Bersha Monochrom...",
        price: 59.2,
        image: Assets.imagesMockImage08,
        brandName: null),
    Product(
        name: "Lacoste Red Polar S...",
        price: 149.9,
        image: Assets.imagesMockImage07,
        brandName: Assets.imagesAvtLacoste.image()),
    Product(
        name: "Levi's x Lego",
        price: null,
        image: Assets.imagesMockImage10,
        brandName: Assets.imagesAvtLevi.image()),
    Product(
        name: "Adidas Printed Skirt",
        price: 39,
        image: Assets.imagesMockImage01,
        brandName: Assets.imagesAvtAddidas.image()),
  ];
  static List<CartTrackingProductModel> listCartTrackingProduct = [
    CartTrackingProductModel(
        image: Assets.imagesMockImage03,
        title: "Bershka Mom Jeans",
        status: const Row(
          children: [
            Text(
              "Current Order ",
              style: AppTypography.bodyNormalPrimary,
            ),
            Text(
              "- Arrival est. Apr 14",
              style: AppTypography.bodyNormal,
            ),
          ],
        )),
    CartTrackingProductModel(
        image: Assets.imagesMockCartProductImage02,
        title: "Bershka Green Top/ Lacoste Pop...",
        status: const Text(
          "2 products - Shipped on Mar 30",
          style: AppTypography.bodyNormal,
        )),
    CartTrackingProductModel(
        image: Assets.imagesMockCartProductImage03,
        title: "Bershka Sport Snackers",
        status: RichText(
          text: const TextSpan(
            text: 'Cancelled on Mar 16 ',
            style: AppTypography.bodyNormalRed,
          ),
        )),
    CartTrackingProductModel(
        image: Assets.imagesMockCartProductImage02,
        title: "Lacoste Sport Top/ Bershka Ski...",
        status: RichText(
          text: const TextSpan(
            text: '2 products - Shipped on Feb 12',
            style: AppTypography.bodyNormal,
          ),
        )),
    CartTrackingProductModel(
        image: Assets.imagesMockCartProductImage05,
        title: "Zara Red Shirt",
        status: RichText(
          text: const TextSpan(
            text: 'Shipped on Jan 29',
            style: AppTypography.bodyNormal,
          ),
        )),
    CartTrackingProductModel(
        image: Assets.imagesMockImageCartTracking06,
        title: "Bershka Printed Dress",
        status: RichText(
          text: const TextSpan(
            text: 'Shipped on Jan 11 - Arrival est.Apr 14',
            style: AppTypography.bodyNormal,
          ),
        )),
    CartTrackingProductModel(
        image: Assets.imagesMockImage01,
        title: "Bershka White Coat",
        status: RichText(
          text: const TextSpan(
            text: 'Shipped on Dec 30, 2020 ',
            style: AppTypography.bodyNormal,
          ),
        )),
  ];
}
