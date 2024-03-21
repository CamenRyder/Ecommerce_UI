import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
import 'package:ecommerce_brand/screens/edit%20tabs/widgets/reordering_drag_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyEditsScreen extends StatefulWidget {
  const BodyEditsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BodyEditsScreen();
  }
}

class _BodyEditsScreen extends State<BodyEditsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: Constant.paddingVertical),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal,
                vertical: Constant.paddingHorizontal),
            child: const Text("Active tabs", style: AppTypography.bodyLarge22),
          ),
          const ReorderingListTabs(),
        ],
      ),
    ));
  }
}
