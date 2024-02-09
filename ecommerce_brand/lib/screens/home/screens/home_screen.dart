
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/widgets/indicatorCustom.dart';
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
   final HomeScreenController _controller = Get.put(HomeScreenController()); 
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _controller. 
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,
   
      // bottomNavigationBar: ,  
      body: PageView(
        controller: _controller.pageController ,
        physics:  const NeverScrollableScrollPhysics(),
        children: [
          FeedPage(controller: _controller,),
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
