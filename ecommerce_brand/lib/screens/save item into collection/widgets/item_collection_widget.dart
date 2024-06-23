import 'package:ecommerce_brand/core/utils/helper.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ItemCollectionWidget extends StatelessWidget {
  ItemCollectionWidget({super.key, required this.item});
  dynamic item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
        showToast(
            title: "Products saved to ${item['name']}", message: "See more");
      },
      child: Container(
          margin: const EdgeInsets.only(top: 3, bottom: 12),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 18),
                height: 75,
                width: 55,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: item['image'],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['name'],
                    style: AppTypography.bodyBold,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    item['quanity'],
                    style: AppTypography.bodyNormal,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
