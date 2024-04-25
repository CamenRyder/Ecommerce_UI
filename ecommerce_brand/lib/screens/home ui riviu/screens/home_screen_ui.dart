import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:ecommerce_brand/core/utils/widgets/indicatorCustom.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/screens/discover_tab.dart';
import 'package:flutter/material.dart';

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenUI();
  }
}

class _HomeScreenUI extends State<HomeScreenUI>
    with SingleTickerProviderStateMixin {
  late TabController tabsController;

  bool isShow = true;
  bool isShowCatalogs = true;

  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    tabsController = TabController(length: 2, vsync: this);
    scrollController = ScrollController();
    double oldOffset = 0.0;
    scrollController.addListener(() {
      if (scrollController.offset > 100) {
        if (scrollController.offset > oldOffset) {
          setState(() {
            isShow = false;
            isShowCatalogs = false;
          });
        } else if (scrollController.offset < oldOffset - 75) {
          setState(() {
            isShow = true;
          });
        } else {
          setState(() {
            isShowCatalogs = true;
          });
        }
      }
      oldOffset = scrollController.offset;
    });
  }

/* 
   

*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromARGB(255, 255, 212, 156)),
              child: Assets.imagesAvtRightAppbar.image(height: 24),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        transformAlignment: Alignment.topLeft,
                        alignment: Alignment.topLeft,
                        height: isShow ? 25 : 0,
                        child: const Text(
                          "Thành phố Quảng Ngãi",
                          style: AppTypography.bodyLargeBold21,
                        ),
                      ),
                      AnimatedContainer(
                        height: isShow ? 30 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: isShow ? 24 : 0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 40,
                width: isShow
                    ? MediaQuery.sizeOf(context).width
                    : MediaQuery.sizeOf(context).width - 90,
                margin: EdgeInsets.only(bottom: 10, top: isShow ? 14 : 0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                decoration: BoxDecoration(
                    color: AppColors.grey65,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Assets.iconsIcResearch
                        .svg(color: AppColors.textGrey, height: 18),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: const Text(
                        "Tìm Riviu, địa điểm, ... ",
                        style:
                            TextStyle(fontSize: 14, color: AppColors.textGrey),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: isShowCatalogs ? 50 : 0,
                // width: isShowCatalogs ? 50 : 0,
                alignment: Alignment.topLeft,
                child: TabBar(
                    isScrollable: true,
                    indicatorWeight: 1,
                    indicatorColor: Colors.transparent,
                    tabAlignment: TabAlignment.start,
                    automaticIndicatorColorAdjustment: false,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: AppTypography.bodyNormalBold800,
                    unselectedLabelColor: AppColors.textGrey,
                    controller: tabsController,
                    tabs: const [
                      Tab(
                        text: "Khám phá",
                      ),
                      Tab(
                        text: "Theo dõi",
                      ),
                    ]),
              ),
              Expanded(
                  child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: tabsController,
                children: [
                  DiscoverTab(
                    scrollController: scrollController,
                  ),
                  Container(
                    color: AppColors.background,
                    child: const Center(
                      child: IndicatorCustom(),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ]),
      )),
    );
  }
}
