import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class HeaderMarketDefault extends StatelessWidget{
  const HeaderMarketDefault({super.key});

  @override
  Widget build(BuildContext context) {
      return  Column(
        children: [
          Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 24),
                    alignment: Alignment.center,
                    child: const Text(
                      "Market",
                      style: AppTypography.bodyLarge32,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                              height: 55,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Constant.paddingHorizontal),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.border),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Search on Tassel",
                                    style: AppTypography.bodyNormal16,
                                  ),
                                  Assets.iconsIcResearch
                                      .svg(color: AppColors.textGrey)
                                ],
                              )),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 9),
                            height: 58,
                            width: 58,
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: AppColors.border, width: 1)),
                            child: Assets.iconsIcWomen.svg())
                      ],
                    ),
                  )
        ],
      )  ;   
  }

}