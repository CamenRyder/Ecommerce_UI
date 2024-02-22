class FocusProductModel {
  FocusProductModel(
      {required this.name,
      required this.icon,
      this.isSelected = false,
      this.functionEndPress});
  String? name;
  dynamic icon;
  bool isSelected = false;
  dynamic functionEndPress;

  @override
  String toString() {
    return "Adbc name: $name , iSelected: $isSelected \n";
  }
}
