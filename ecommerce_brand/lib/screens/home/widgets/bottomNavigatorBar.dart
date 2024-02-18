import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class BottomNavigatorBar extends StatefulWidget {
  BottomNavigatorBar({super.key, required this.controller});
  HomeScreenController controller;
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigatorBar();
  }
}

class _BottomNavigatorBar extends State<BottomNavigatorBar> {
  late final HomeScreenController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller;
  }

  @override
  Widget build(BuildContext context) {
    return _bottomNavigator();
  }

  _bottomNavigator() {
    return Container(
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 0))),
      child: BottomAppBar(
        child: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            elevation: 0,
            currentIndex: controller.tabIndex.value,
            onTap: (index) {
              setState(() {
                controller.onTabChanged(index);
              });
            },
            items: [
              _bottomNavigationBarItem(icon: Assets.iconsIcHome, title: 'Feed'),
              _bottomNavigationBarItem(
                  icon: Assets.iconsIcMarket, title: 'Market'),
              _bottomNavigationBarItem(
                  icon: Assets.iconsIcProfile, title: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem({
    required SvgGenImage icon,
    required String title,
  }) {
    return BottomNavigationBarItem(
      icon: icon.svg(
        fit: BoxFit.scaleDown,
        width: 24.w,
        height: 24.w,
        colorFilter: const ColorFilter.mode(
          AppColors.black,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: icon.svg(
        fit: BoxFit.scaleDown,
        width: 24.w,
        height: 24.w,
        colorFilter: const ColorFilter.mode(
          AppColors.primary,
          BlendMode.srcIn,
        ),
      ),
      label: title,
    );
  }
}
