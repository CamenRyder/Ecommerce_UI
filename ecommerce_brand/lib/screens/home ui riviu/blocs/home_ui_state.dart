import 'package:ecommerce_brand/screens/home%20ui%20riviu/model/Product.dart';

abstract class ProductState {
  ProductState();
}

class ProductLoadingInitial extends ProductState {}

class ProductLoadingTab01Success extends ProductState {
  final List<ProductModel>? products;
  final bool? hasReachedMax;

  ProductLoadingTab01Success({
    required this.hasReachedMax,
    required this.products,
  });
  ProductLoadingTab01Success copyWith(
      {List<ProductModel>? products, bool? hasReachedMax, bool? isListView}) {
    return ProductLoadingTab01Success(
        products: products ?? this.products,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax);
  }
}

class ProductLoadingTab02Success extends ProductState {
  final List<ProductModel>? products;
  final bool? hasReachedMax;

  ProductLoadingTab02Success({
    required this.hasReachedMax,
    required this.products,
  });
  ProductLoadingTab02Success copyWith(
      {List<ProductModel>? products, bool? hasReachedMax, bool? isListView}) {
    return ProductLoadingTab02Success(
        products: products ?? this.products,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax);
  }
}

class ProductLoadingTab03Success extends ProductState {
  final List<ProductModel>? products;
  final bool? hasReachedMax;

  ProductLoadingTab03Success({
    required this.hasReachedMax,
    required this.products,
  });
  ProductLoadingTab03Success copyWith(
      {List<ProductModel>? products, bool? hasReachedMax, bool? isListView}) {
    return ProductLoadingTab03Success(
        products: products ?? this.products,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax);
  }
}

// class ExpandAppBar extends ProductState {}

// class ExpandAppBarQuick extends ProductState {}

// class ScaleAppBar extends ProductState {}

// ignore: must_be_immutable
class ProductLoadingFailure extends ProductState {
  String? mess = "";
  ProductLoadingFailure({this.mess});
}
