import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BodyFeedPage extends StatefulWidget {
  BodyFeedPage({super.key, required this.controller});
  HomeScreenController controller;
  @override
  State<StatefulWidget> createState() {
    return _BodyFeedPage();
  }
}

class _BodyFeedPage extends State<BodyFeedPage> with TickerProviderStateMixin {
  late HomeScreenController _controller;
  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
    _controller.initTabController(this);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      _controller.changeElemengtTabContraoller(this);
      return Column(
        children: [
          TabBar(
              isScrollable: true,
              indicatorWeight: 1,
              padding: const EdgeInsets.only(bottom: 10),
              tabAlignment: TabAlignment.start,
              automaticIndicatorColorAdjustment: false,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border(
                      bottom: BorderSide(width: 1, color: AppColors.primary))),
              labelStyle: AppTypography.bodyNormalBold,
              unselectedLabelColor: AppColors.textGrey,
              controller: _controller.tabController.value,
              tabs: _controller.tabViewHome()),
        ],
      );
    });
  }
}
