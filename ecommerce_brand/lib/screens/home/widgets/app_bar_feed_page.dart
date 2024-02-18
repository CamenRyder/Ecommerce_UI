import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/widgets.dart';

class AppBarFeedPage extends StatelessWidget {
  const AppBarFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Assets.iconsIcFile.svg(height: 24, width: 24),
          ),
          const Text(
            "Feed",
            style: AppTypography.header,
          ),
          GestureDetector(
            child: Assets.iconsIcResearch.svg(height: 24, width: 24),
          ),
        ],
      ),
    );
  }
}
