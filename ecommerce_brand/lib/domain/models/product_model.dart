import 'dart:ffi';

class Product {
  String? name;
  dynamic image;
  double? price;
  double? oldPrice;
  dynamic brandName;
  dynamic iconBrand;  

  Product({this.name, this.image, this.price, this.brandName, this.oldPrice, this.iconBrand});

  @override
  String toString() {
    return "Name: $name, Price: $price , Brand: $brandName \n";
  }
}
