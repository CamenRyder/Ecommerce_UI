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
  final PageController pageController = PageController(initialPage: 0);
  final _controllerTabsEdit =Get.put(EditTabsScreenController()) ;
  late Rx<TabController> tabController;
 

  void initTabController(TickerProvider provider) {
    tabController = Rx(
      TabController(
          length: getTabBarLength(), vsync: provider, initialIndex: 0),
    );
  }

  void changeElemengtTabContraoller(TickerProvider provider) {
    tabController.value = TabController(length: _controllerTabsEdit.tabsElementModelShow.value.length , vsync: provider , initialIndex: 0 ) ;
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
