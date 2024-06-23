import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/save_into_collection_controller.dart';
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
        return Container(
            margin: const EdgeInsets.only(top: 3, bottom: 12),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 18),
                  height: 75,
                  width: 55,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: items[index]['image'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      items[index]['name'],
                      style: AppTypography.bodyBold,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      items[index]['quanity'],
                      style: AppTypography.bodyNormal,
                    ),
                  ],
                )
              ],
            ));
      },
    );
  }
}
