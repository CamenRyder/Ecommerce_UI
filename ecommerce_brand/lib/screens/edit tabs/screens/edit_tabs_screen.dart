import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditTabsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EditTabsScreen();
  }
}

class _EditTabsScreen extends State<EditTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 8,
            padding: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal,
                vertical: Constant.paddingVertical),
            color: AppColors.primary,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.close,
                      size: 28,
                      color: AppColors.background,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
