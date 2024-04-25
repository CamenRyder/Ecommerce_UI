class Product {
  String? name;
  dynamic image;
  double? price;
  double? oldPrice;
  dynamic brandName;
  dynamic iconBrand;
  String? userName;
  int? favorite;
  dynamic imageUserAva;

  Product(
      {this.name,
      this.image,
      this.userName,
      this.favorite,
      this.imageUserAva,
      this.price,
      this.brandName,
      this.oldPrice,
      this.iconBrand});

  @override
  String toString() {
    return "Name: $name, Price: $price , Brand: $brandName \n";
  }
}
