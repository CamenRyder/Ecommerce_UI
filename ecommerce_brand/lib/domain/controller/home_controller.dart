import 'package:ecommerce_brand/core/routes/routes.dart';
import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
import 'package:ecommerce_brand/domain/models/tabs_editting_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final tabIndex = 0.obs;
  final length = 0.obs;
  final PageController pageController = PageController(initialPage: 0);
  RxBool showBottomFloatingActionButton = false.obs;
  final isSearchBar = false.obs;
  late ScrollController scrollController;

  final _controllerTabsEdit = Get.put(EditTabsScreenController());
  late Rx<TabController> tabController;
  late TickerProvider _provider;

  void initTabController(TickerProvider provider) {
    tabController = Rx(
      TabController(
          length: getTabBarLength(), vsync: provider, initialIndex: 0),
    );
    _provider = provider;
  }

  void onScrollOverNestedListTrue() {
    showBottomFloatingActionButton.value = true;
  }

  void onScrollOverNestedListFalse() {
    showBottomFloatingActionButton.value = false;
  }

  void initScrollController() {
    scrollController = ScrollController();
    double oldOffset = 0.0;
    scrollController.addListener(() {
      if (scrollController.offset > 100) {
        if (scrollController.offset > oldOffset) {
          onScrollOverNestedListTrue();
        } else {
          onScrollOverNestedListFalse();
        }
      }
      oldOffset = scrollController.offset;
    });
  }

  void changeElemengtTabContraoller() {
    tabController.value = TabController(
        length: _controllerTabsEdit.tabsElementModelShow.value.length,
        vsync: _provider,
        initialIndex: 0);
    length.value = _controllerTabsEdit.tabsElementModelShow.value.length;
  }

  int getTabBarLength() => ListComponentTabConstant.listQuickFilterHome.length;
  // late Rx<TabController> tabController;

  onTabChanged(int newTabIndex) {
    tabIndex.value = newTabIndex;
    _moveToPage(newTabIndex);
  }

  List<Widget> tabViewHome() {
    List<TabsEditsModel> items = _controllerTabsEdit.tabsElementModelShow.value;
    final itemsWasShow =
        items.where((element) => element.isShow == true).toList();
    print("Tabs view home: $itemsWasShow");
    return itemsWasShow.map((e) {
      if (e.index == 10) {
        return GestureDetector(
          onTap: () {
            Get.toNamed(Routes.editTabs);
          },
          child: SizedBox(
            height: 22,
            width: 22,
            child: Assets.iconsIcSetting
                .svg(height: 18, width: 18, color: AppColors.textGrey),
          ),
        );
      }
      return Tab(text: e.name);
    }).toList();
  }

  void _moveToPage(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }
}
