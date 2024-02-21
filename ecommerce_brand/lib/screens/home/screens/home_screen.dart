import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/widgets/indicatorCustom.dart';
import 'package:ecommerce_brand/core/utils/widgets/wrapper_icon_svg.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:ecommerce_brand/screens/home/screens/page/feed_page.dart';
import 'package:ecommerce_brand/screens/home/widgets/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _controller = Get.find<HomeScreenController>();
  final _editTabsController = Get.find<EditTabsScreenController>();

  @override
  void initState() {
    super.initState();
    _editTabsController.initTabsElementModel();
    _controller.initTabController(this);
    _controller.initScrollController();
    // _controller.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,

      // bottomNavigationBar: ,
      body: PageView(
        controller: _controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const FeedPage(),
          // const MarketScreen(),f
          // const ProfileScreen(),
          Container(
            color: AppColors.backgroundWhite,
            child: const Center(
              child: IndicatorCustom(),
            ),
          ),
          Container(
            color: AppColors.backgroundWhite,
            child: const Center(
              child: IndicatorCustom(),
            ),
          ),
          Container(
            color: AppColors.backgroundWhite,
            child: const Center(
              child: IndicatorCustom(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigatorBar(controller: _controller),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
    );
  }

  Widget floatingActionButton() {
    return Obx(() {
      return AnimatedSlide(
        duration: const Duration(milliseconds: 200),
        offset: _controller.showBottomFloatingActionButton.value
            ? Offset.zero
            : const Offset(0, 2),
        child: AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: _controller.showBottomFloatingActionButton.value ? 1 : 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 30),
              height: 76,
              width: 144,
              decoration: AppStyles.borderSideFloatingActionButton,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.showBottomFloatingActionButton.value = false;
                      _controller.isSearchBar.value = true;
                    },
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration:
                            AppStyles.borderComponentFloatingActionButton,
                        child: WrapperIconSVG(
                          icon: Assets.iconsIcResearch,
                        )),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(Routes.document);
                      print('hello world');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: AppStyles.borderComponentFloatingActionButton,
                      child: WrapperIconSVG(
                        icon: Assets.iconsIcFile,
                      ),
                    ),
                  )
                ],
              ),
            )),
      );
    });
  }
}
