class Product {
  String? name;
  dynamic image;
  double? price;
  dynamic brandName;
  Product({this.name, this.image, this.price, this.brandName});

  @override
  String toString() {
    return "Name: $name, Price: $price , Brand: $brandName \n";
  }
}
