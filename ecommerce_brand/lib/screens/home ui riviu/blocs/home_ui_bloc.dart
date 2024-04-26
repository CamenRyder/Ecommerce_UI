import 'package:dio/dio.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/blocs/home_ui_event.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/blocs/home_ui_state.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/component/httpClient.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/model/Product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductLoadingInitial()) {
    on<ProductScreenTab1Fetched>(
        (event, emit) => loadingDataTab1(event: event, emit: emit));
    on<ProductScreenTab2Fetched>(
        (event, emit) => loadingDataTab2(event: event, emit: emit));
    on<ProductScreenTab3Fetched>(
        (event, emit) => loadingDataTab3(event: event, emit: emit));
  
  }

  ProductService service = ProductService();


  loadingDataTab1(
      {required ProductScreenTab1Fetched event, required Emitter emit}) async {
    if (state is ProductLoadingTab01Success) {
      if ((state as ProductLoadingTab01Success).hasReachedMax == true) {
        return;
      }
    }

    try {
      if (event.page == 1 || state is ProductLoadingInitial) {
        ReponseProduct reponseProduct =
            await service.getListProduct(page: 1, pageSize: 10);
        final products = reponseProduct.products;
        final total = reponseProduct.total;
        emit(ProductLoadingTab01Success(
            hasReachedMax: products.length >= total ? true : false,
            products: products));
      } else {
        final currentState = state as ProductLoadingTab01Success;
        // await Future.delayed(Duration(seconds: 1)) ;
        ReponseProduct reponseProduct =
            await service.getListProduct(page: event.page, pageSize: 10);
        final products = reponseProduct.products;
        final total = reponseProduct.total;
        emit(currentState.copyWith(
          products: currentState.products! + products,
          hasReachedMax: products.length >= total ? true : false,
        ));
      }
    } catch (e) {
      emit(ProductLoadingFailure(mess: e.toString()));
    }
  }

  loadingDataTab3(
      {required ProductScreenTab3Fetched event, required Emitter emit}) async {
    if (state is ProductLoadingTab03Success) {
      if ((state as ProductLoadingTab03Success).hasReachedMax == true) {
        return;
      }
    }

    try {
      if (event.page == 1 || state is ProductLoadingInitial) {
        ReponseProduct reponseProduct =
            await service.getListProduct(page: 1, pageSize: 10);
        final products = reponseProduct.products;
        final total = reponseProduct.total;
        emit(ProductLoadingTab03Success(
            hasReachedMax: products.length >= total ? true : false,
            products: products));
      } else {
        final currentState = state as ProductLoadingTab03Success;
        // await Future.delayed(Duration(seconds: 1)) ;
        ReponseProduct reponseProduct =
            await service.getListProduct(page: event.page, pageSize: 10);
        final products = reponseProduct.products;
        final total = reponseProduct.total;
        emit(currentState.copyWith(
          products: currentState.products! + products,
          hasReachedMax: products.length >= total ? true : false,
        ));
      }
    } catch (e) {
      emit(ProductLoadingFailure(mess: e.toString()));
    }
  }

  loadingDataTab2(
      {required ProductScreenTab2Fetched event, required Emitter emit}) async {
    if (state is ProductLoadingTab02Success) {
      if ((state as ProductLoadingTab02Success).hasReachedMax == true) {
        return;
      }
    }

    try {
      if (event.page == 1 || state is ProductLoadingInitial) {
        ReponseProduct reponseProduct =
            await service.getListProduct(page: 1, pageSize: 10);
        final products = reponseProduct.products;
        final total = reponseProduct.total;
        emit(ProductLoadingTab02Success(
            hasReachedMax: products.length >= total ? true : false,
            products: products));
      } else {
        final currentState = state as ProductLoadingTab02Success;
        // await Future.delayed(Duration(seconds: 1)) ;
        ReponseProduct reponseProduct =
            await service.getListProduct(page: event.page, pageSize: 10);
        final products = reponseProduct.products;
        final total = reponseProduct.total;
        emit(currentState.copyWith(
          products: currentState.products! + products,
          hasReachedMax: products.length >= total ? true : false,
        ));
      }
    } catch (e) {
      emit(ProductLoadingFailure(mess: e.toString()));
    }
  }
}

class ProductService extends FetchClient {
  Future<ReponseProduct> getListProduct({int? page, int? pageSize}) async {
    Map<String, dynamic> params = {"page": page, "page_size": pageSize};
    final Response response = await super
        .getData(path: '/abe/product/get-many', queryParameters: params);
    if (response.statusCode == 200) {
      final listDataProducts = response.data['data'];
      final total = response.data['total'];
      List<ProductModel> products = ProductModel.toList(listDataProducts);
      ReponseProduct reponseProduct =
          ReponseProduct(products: products, total: total);

      return reponseProduct;
    } else {
      final error = ErrorModel.fromJson(response.data);
      throw error.message?.first ?? '';
    }
  }
}

class ReponseProduct {
  ReponseProduct({required this.products, required this.total});
  List<ProductModel> products;
  int total;
}

class ErrorModel {
  int? status;
  List<String>? message;
  String? timestamp;
  String? path;

  ErrorModel({this.status, this.message, this.timestamp, this.path});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    print(json['message']);
    return ErrorModel(
      status: json['status'],
      message: List.from(json['message']),
      timestamp: json['timestamp'],
      path: json['path'],
    );
  }
}
