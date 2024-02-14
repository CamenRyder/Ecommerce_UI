/*
    "name": "All",
      "image": null,
      "index": 0,
      "tag": null,
 */

class TabsEditsModel {
  String? name;
  dynamic image;
  int? index;
  String? tag;
  bool isChoice ;
  bool? isShow;

  TabsEditsModel(
      {this.name,
      this.image,
      this.index,
      this.tag,
      this.isChoice = false,
      this.isShow});

      @override
  String toString() {
    return "Index: $index , Name: $name , Tag: $tag \n";
  }
}
