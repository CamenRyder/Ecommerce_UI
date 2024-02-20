import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/domain/models/product_model.dart';

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
}
