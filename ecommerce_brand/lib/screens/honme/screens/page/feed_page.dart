import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/domain/controller/home_controller.dart';
import 'package:ecommerce_brand/screens/honme/widgets/app_bar_feed_page.dart';
import 'package:ecommerce_brand/screens/honme/widgets/body_feed_page.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key, required this.controller});
  final HomeScreenController controller;
  @override
  State<StatefulWidget> createState() {
    return _FeedPage();
  }
}

class _FeedPage extends State<FeedPage> {
  late HomeScreenController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = widget.controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: AppStyles.paddingScreen,
        child: Column(
          children: [
            const AppBarFeedPage(),
            BodyFeedPage(controller: _controller),
          ],
        ),
      ),
    );
  }
}
