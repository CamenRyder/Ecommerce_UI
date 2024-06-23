import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/focus_product_controller.dart';
import 'package:ecommerce_brand/domain/models/product_model.dart';
import 'package:ecommerce_brand/screens/focus%20product/widget/options_focus_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:glass/glass.dart';

// ignore: must_be_immutable
class FocusProductScreen extends StatefulWidget {
  Product item;
  FocusProductScreen({super.key, required this.item});

  @override
  State<StatefulWidget> createState() {
    return _FocusProductScreen();
  }
}

class _FocusProductScreen extends State<FocusProductScreen> {
  bool isSelected = false;
  late final _controller = Get.put(FocusProductScreenController());

  get widthScreen => MediaQuery.sizeOf(context).width;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.item.image.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constant.paddingHorizontal),
              child: SizedBox(
                height: 55,
                child: Obx(() {
                  return _controller.isSelectedLongPressOption.value ||
                          _controller.isSelectedLongPress.value
                      ? Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 18),
                              child: Text(
                                _controller.title.value,
                                style: AppTypography.headerLarge,
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        )
                      : Container();
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constant.paddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Hero(
                      tag: 'list_${widget.item.name}',
                      child: SizedBox(
                        width: 240,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: widget.item.image.image(),
                        ),
                      )),
                  OptionsFocusProductWidget(
                    item: widget.item,
                  ),
                ],
              ),
            ),
            Obx(() => GestureDetector(
                  onLongPress: () {
                    _controller.getTextItem("Show more");
                  },
                  onLongPressEnd: (a) {},
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 350),
                    margin: const EdgeInsets.only(top: 24),
                    width: _controller.isSelectedLongPress.value
                        ? widthScreen - 36
                        : widthScreen - 48,
                    height: _controller.isSelectedLongPress.value ? 105 : 90,
                    padding: const EdgeInsets.all(Constant.paddingHorizontal),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: _controller.isSelectedLongPress.value
                            ? AppColors.primary
                            : AppColors.backgroundWhite),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${widget.item.name}",
                          style: _controller.isSelectedLongPress.value
                              ? AppTypography.bodyNormal18White
                              : AppTypography.bodyNormal16Black,
                        ),
                        Container(
                          height:
                              _controller.isSelectedLongPress.value ? 45 : 41,
                          width:
                              _controller.isSelectedLongPress.value ? 45 : 41,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _controller.isSelectedLongPress.value
                                  ? AppColors.primary
                                  : AppColors.backgroundWhite,
                              border: Border.all(
                                  width: 0.45,
                                  color: _controller.isSelectedLongPress.value
                                      ? AppColors.backgroundWhite
                                      : AppColors.textGrey)),
                          child: Center(
                            child: Text(
                              "Brand",
                              style: _controller.isSelectedLongPress.value
                                  ? AppTypography.bodyRegularWhite
                                  : AppTypography.bodyRegular,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        )).asGlass(blurX: 20, blurY: 20),
      ),
    ));
  }
}
