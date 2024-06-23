import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/domain/controller/focus_product_controller.dart';
import 'package:ecommerce_brand/domain/models/focus_product_model.dart';
import 'package:ecommerce_brand/domain/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OptionsFocusProductWidget extends StatefulWidget {
  const OptionsFocusProductWidget({super.key, required this.item});
  final Product item;
  @override
  State<StatefulWidget> createState() {
    return _OptionsFocusProduct();
  }
}

class _OptionsFocusProduct extends State<OptionsFocusProductWidget> {
  late final _controller = Get.find<FocusProductScreenController>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: listOptions());
  }

  List<Widget> listOptions() {
    _controller.optionFocusProduct.toString();
    return _controller.optionFocusProduct.map((e) => buttonOptions(e)).toList();
  }

  Widget buttonOptions(FocusProductModel item) {
    return GestureDetector(
      onLongPress: () {
        setState(() {
          item.isSelected = true;
          _controller.getTextItem(item.name ?? "Name");
        });
      },
      onLongPressEnd: (a) {
        item.functionEndPress(widget.item, context);
        Future.delayed((const Duration(seconds: 1)), () {
          setState(() {
            _controller.resetSelected();
          });
        });
      },
      onTap: () async {
        setState(() {
          _controller.getTextItem(item.name ?? "Name");
          item.isSelected = true;
          Future.delayed((const Duration(seconds: 1)), () {
            setState(() {
              _controller.resetSelected();
            });
          });
        });
        item.functionEndPress(widget.item, context);
      },
      child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: const Duration(milliseconds: 350),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: item.isSelected
                ? AppColors.primary
                : AppColors.backgroundWhite),
        height: item.isSelected ? 55 : 48,
        width: item.isSelected ? 55 : 48,
        child: item.icon.svg(
            colorFilter: ColorFilter.mode(
                item.isSelected ? Colors.white : Colors.black,
                BlendMode.srcIn)),
      ),
    );
  }
}
