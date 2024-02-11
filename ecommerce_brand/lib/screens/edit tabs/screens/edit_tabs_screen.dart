import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/styles.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditTabsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EditTabsScreen();
  }
}

class _EditTabsScreen extends State<EditTabsScreen> {
  final List<int> _items = List<int>.generate(5, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = Colors.lime.shade100;
    final Color evenItemColor = Colors.deepPurple.shade100;

    final List<Card> cards = <Card>[
      for (int index = 0; index < _items.length; index += 1)
        Card(
          key: Key('$index'),
          color: _items[index].isOdd ? oddItemColor : evenItemColor,
          child: SizedBox(
            height: 80,
            child: Center(
              child: Text('Card ${_items[index]}'),
            ),
          ),
        ),
    ];

    Widget proxyDecorator(
        Widget child, int index, Animation<double> animation) {
      return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          final double animValue = Curves.easeInOut.transform(animation.value);
          final double elevation = lerpDouble(1, 6, animValue)!;
          final double scale = lerpDouble(1, 1.02, animValue)!;
          return Transform.scale(
            scale: scale,
            // Create a Card based on the color and the content of the dragged one
            // and set its elevation to the animated value.
            child: Card(
              elevation: elevation,
              color: cards[index].color,
              child: cards[index].child,
            ),
          );
        },
        child: child,
      );
    }

    return Scaffold(
        backgroundColor: AppColors.backgroundWhite,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.backgroundWhite,
          title: const Text("Tabs Edit", style: AppTypography.header),
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.close,
              size: 28,
              color: AppColors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Constant.paddingHorizontal,
                vertical: Constant.paddingVertical),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: Constant.paddingHorizontal),
                  child:
                      const Text("Active tabs", style: AppTypography.bodyLarge),
                ),
                Expanded(
                  child: ReorderableListView(
                    // padding: const EdgeInsets.symmetric(horizontal: 40),

                    children: cards,
                    onReorder: (int oldIndex, int newIndex) {
                      setState(() {
                        if (oldIndex < newIndex) {
                          newIndex -= 1;
                        }
                        final int item = _items.removeAt(oldIndex);
                        _items.insert(newIndex, item);
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

  // Widget _headerEditTabsScreen() {
  //   return Container(
  //     color: AppColors.primary,
  //     child: Row(
  //       children: [
  //         GestureDetector(
  //           onTap: () {
  //             Get.back();
  //           },
  //           child: const Icon(
  //             Icons.close,
  //             size: 28,
  //             color: AppColors.black,
  //           ),
  //         ),
  //         Expanded(child: Container()),
  //         const Text("Tabs Edit", style: AppTypography.header),
  //         Expanded(child: Container()),
  //         const SizedBox(
  //           width: 28,
  //         )
  //       ],
  //     ),
  //   );
  // }

