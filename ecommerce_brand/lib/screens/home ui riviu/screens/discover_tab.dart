import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/domain/mock/mock_product.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/blocs/home_ui_event.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/screens/mason_list.dart';
import 'package:flutter/material.dart';

class DiscoverTab extends StatefulWidget {
  const DiscoverTab({super.key});


  @override
  State<StatefulWidget> createState() {
    return _DiscoverTab();
  }
}

class _DiscoverTab extends State<DiscoverTab>
    with SingleTickerProviderStateMixin {
  late TabController tabsController;
  final list = MockProduct.listProductHomeUI;
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    tabsController = TabController(length: 3, vsync: this);
    // scrollController = widget.scrollController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            alignment: Alignment.topLeft,
            child: ButtonsTabBar(
                duration: 300,
                unselectedLabelStyle:
                    const TextStyle(color: AppColors.textGrey),
                unselectedBackgroundColor: AppColors.backgroundWhite,
                labelStyle:
                    const TextStyle(color: Color.fromARGB(255, 255, 94, 7)),
                backgroundColor: const Color.fromARGB(255, 255, 222, 181),
                radius: 18,
                splashColor: AppColors.border,
                buttonMargin: const EdgeInsets.only(left: 3),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                controller: tabsController,
                height: 35,
                tabs: const [
                  Tab(
                    text: "Đề xuất",
                  ),
                  Tab(
                    text: "Mới Nhất",
                  ),
                  Tab(
                    text: "Hot Nhất",
                  ),
                ]),
          ),
          Expanded(
            child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: tabsController,
                children: tabsViewCategory()),
          )
        ],
      ),
    );
  }

  tabsViewCategory() {
    List<Widget> listMock = [];
    GlobalKey<RefreshIndicatorState> indicator1 =
        GlobalKey<RefreshIndicatorState>();
    GlobalKey<RefreshIndicatorState> indicator2 =
        GlobalKey<RefreshIndicatorState>();
    GlobalKey<RefreshIndicatorState> indicator3 =
        GlobalKey<RefreshIndicatorState>();
    listMock.add(MarsonList(
      event: ProductScreenTab1Fetched(),
      index: 1,
      refreshIndicator: indicator1,
    ));
    listMock.add(MarsonList(
      event: ProductScreenTab2Fetched(),
      index: 2,
      refreshIndicator: indicator2,
    ));
    listMock.add(MarsonList(
      event: ProductScreenTab3Fetched(),
      index: 3,
      refreshIndicator: indicator3,
    ));
    return listMock;
  }
}
