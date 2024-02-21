import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:ecommerce_brand/domain/mock/mock_product.dart';
import 'package:ecommerce_brand/screens/home/widgets/app_bar_feed_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _FeedPage();
  }
}

class _FeedPage extends State<FeedPage> {
  final list = MockProduct.listProductHomeFeed;
  final _controller = Get.find<HomeScreenController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.only(
              left: Constant.paddingHorizontal,
              right: Constant.paddingHorizontal,
              top: Constant.paddingVertical),
          child: Obx(() {
            _controller.changeElemengtTabContraoller();
            return Column(
              children: [
                AppBarFeedPage(),
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
                  child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _controller.tabController.value,
                      children: tabs_mock()),
                )
              ],
            );
          })),
    );
  }

  // ignore: non_constant_identifier_names
  tabs_mock() {
    List<Widget> listMock = [];
    int length = _controller.length.value;
    for (int i = 0; i < length; i++) {
      listMock.add(listview_mock());
    }
    return listMock;
  }

  // ignore: non_constant_identifier_names
  listview_mock() {
    return MasonryGridView.builder(
        controller: _controller.scrollController,
        shrinkWrap: false,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: list.length,
        itemBuilder: (_, index) {
          return Container(
            color: AppColors.backgroundWhite,
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: list[index].image.image(),
                    ),
                    list[index].brandName != null
                        ? Padding(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: list[index].brandName,
                            ),
                          )
                        : Container()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 7),
                  child: Text(
                    list[index].name ?? "Loading",
                    style: AppTypography.bodyNormal16,
                  ),
                ),
                list[index].price != null
                    ? Text(
                        "\$${list[index].price}",
                        style: AppTypography.bodyBold,
                      )
                    : Container()
              ],
            ),
          );
        });
  }
}
