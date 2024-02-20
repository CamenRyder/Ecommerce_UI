import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:ecommerce_brand/screens/home/widgets/app_bar_feed_page.dart';
import 'package:ecommerce_brand/screens/home/widgets/list_view_feed_page.dart';
// import 'package:ecommerce_brand/screens/home/widgets/body_feed_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key, required this.controller});
  final HomeScreenController controller;
  @override
  State<StatefulWidget> createState() {
    return _FeedPage();
  }
}

class _FeedPage extends State<FeedPage> with TickerProviderStateMixin {
  late HomeScreenController _controller;
  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: AppStyles.paddingScreen,
        child: Column(
          children: [
            const AppBarFeedPage(),
            Obx(() {
              final bodyHeight =
                  MediaQuery.sizeOf(context).height - 85 - 10 - 105;
              print("Max screen: $bodyHeight");
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
                              bottom: BorderSide(
                                  width: 1, color: AppColors.primary))),
                      labelStyle: AppTypography.bodyNormalBold,
                      unselectedLabelColor: AppColors.textGrey,
                      controller: _controller.tabController.value,
                      tabs: _controller.tabViewHome()),
                  Expanded(
                    // height: bodyHeight - 59, // for mac :)
                    // height: bodyHeight  ,    // for android
                    child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _controller.tabController.value,
                        children: const [
                          ListFeedPage(),
                          ListFeedPage(),
                          ListFeedPage(),
                          ListFeedPage(),
                          ListFeedPage(),
                          ListFeedPage(),
                          ListFeedPage(),
                        ]),
                  )
                ],
              );
            }),
            // BodyFeedPage(controller: _controller),
          ],
        ),
      ),
    );
  }
}
