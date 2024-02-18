import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/widgets/indicatorCustom.dart';
import 'package:ecommerce_brand/domain/controller/edit_tabs_controller.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:ecommerce_brand/screens/home/screens/page/feed_page.dart';
import 'package:ecommerce_brand/screens/home/widgets/bottomNavigatorBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = Get.find<HomeScreenController>();
  final _editTabsController = Get.find<EditTabsScreenController>();
  @override
  void initState() {
    super.initState();
    _editTabsController.initTabsElementModel();
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
          FeedPage(
            controller: _controller,
          ),
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
    );
  }
}
