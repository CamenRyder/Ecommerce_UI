import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/save_into_collection_controller.dart';
import 'package:ecommerce_brand/screens/save%20item%20into%20collection/widgets/item_collection_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ListCollectionWidget extends StatelessWidget {
  ListCollectionWidget({super.key, required this.scrollController});

  ScrollController scrollController;

  final items = Get.find<SaveIntoCollectionController>().listCollectionMock;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: items.length,
      controller: scrollController,
      itemBuilder: (context, index) {
        return ItemCollectionWidget(item: items[index]);
      },
    );
  }
}
