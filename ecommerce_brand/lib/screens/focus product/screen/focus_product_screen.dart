import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FocusProductScreen extends StatefulWidget {
  dynamic items;
  FocusProductScreen({required this.items});

  @override
  State<StatefulWidget> createState() {
    return _FocusProductScreen();
  }
}

class _FocusProductScreen extends State<FocusProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(130, 240, 240, 240),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Constant.paddingHorizontal),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Hero(
                      tag: 'list_${widget.items.name}',
                      child: SizedBox(
                        width: 240,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: widget.items.image.image(),
                        ),
                      )),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: AppColors.backgroundWhite),
                          height: 48,
                          width: 48,
                          child: Assets.iconsIcFeature.svg(),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: AppColors.backgroundWhite),
                          height: 48,
                          width: 48,
                          child: Assets.iconsIcMedia.svg(),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: AppColors.backgroundWhite),
                          height: 48,
                          width: 48,
                          child: Assets.iconsIcTick.svg(),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back() ;  
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: AppColors.backgroundWhite),
                          height: 48,
                          width: 48,
                          child: Assets.iconsIcBan.svg(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 90,
                padding: const EdgeInsets.all(Constant.paddingHorizontal),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: AppColors.backgroundWhite),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.items.name}",
                      style: AppTypography.bodyNormal16Black,
                    ),
                    Container(
                      height: 41,
                      width: 41,
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.backgroundWhite,
                          border: Border.all(
                              width: 0.45, color: AppColors.textGrey)),
                      child: const Center(
                        child: Text(
                          "Brand",
                          style: AppTypography.bodyRegular,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
