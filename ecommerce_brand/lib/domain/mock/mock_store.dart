import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/domain/models/store_model.dart';

class MockStore {
  static List<StoreModel> stores = [
    StoreModel(
        brandName: "Lacoste",
        typical: "Demin, Luxury",
        icons: Assets.imagesAvtLacoste,
        image: Assets.imagesMockMarketLacosteStores),
    StoreModel(
        brandName: "Levi's",
        typical: "Demin, Casual",
        icons: Assets.imagesAvtLevi,
        image: Assets.imagesMockMarketLeviStores),
    StoreModel(
        brandName: "Adidas",
        typical: "Sport, GenZ",
        icons: Assets.imagesAvtAddidas,
        image: Assets.imagesMockMarketAdidasStores),
    StoreModel(
        brandName: "Champion",
        typical: "Work, Formal",
        icons: Assets.imagesAvtChampion,
        image: Assets.imagesMockMarketChampionStores),
    StoreModel(
        brandName: "Bershka",
        typical: "Juvenile, Generous",
        icons: Assets.imagesAvtBershka,
        image: Assets.imagesMockMarketBershkaStores),
    StoreModel(
        brandName: "Zara",
        typical: "Formal, Afforable",
        icons: Assets.imagesAvtZara,
        image: Assets.imagesMockMarketZaraStores),
  ];
}
