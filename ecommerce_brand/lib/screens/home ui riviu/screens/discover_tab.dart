import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/domain/mock/mock_product.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/screens/mason_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DiscoverTab extends StatefulWidget {
  DiscoverTab({super.key, required this.scrollController});
  ScrollController scrollController;

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
    scrollController = widget.scrollController;
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
    int length = 3;
    for (int i = 0; i < length; i++) {
      listMock.add(listElementPost());
    }
    return listMock;
  }

  Widget listElementPost() {
    return MasonryGridView.builder(
        addAutomaticKeepAlives: true,
        controller: widget.scrollController,
        shrinkWrap: false,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: list.length,
        itemBuilder: (_, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            color: AppColors.backgroundWhite,
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: list[index].image.image(),
                ),
                SizedBox(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7, bottom: 2),
                    child: Text(
                      list[index].name ?? "Loading",
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: list[index].imageUserAva.image(),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 3),
                                child: Text(
                                  "${list[index].userName}",
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.favorite_border_sharp,
                              size: 15,
                            ),
                            Text(
                              "${list[index].favorite}",
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
    // return MarsonList(
    //   scrollController: scrollController,
    //   list: list,
    // );
  }
}
