import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
// import 'package:ecommerce_brand/core/utils/widgets/indicatorCustom.dart';
import 'package:ecommerce_brand/domain/mock/mock_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListFeedPage extends StatefulWidget {
  const ListFeedPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListFeedPage();
  }
}

class _ListFeedPage extends State<ListFeedPage> {
  final list = MockProduct.listProductHomeFeed;
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
        shrinkWrap: false,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: list.length,
        itemBuilder: (_, index) {
          return Container(
            color: AppColors.backgroundWhite,
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: list[index].image.image(),
                    ),
                    list[index].brandName != null
                        ? Padding(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: list[index].brandName,
                            ),
                          )
                        : Container()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 7),
                  child: Text(
                    list[index].name ?? "Loading",
                    style: AppTypography.bodyNormal16,
                  ),
                ),
                list[index].price != null
                    ? Text(
                        "\$${list[index].price}",
                        style: AppTypography.bodyBold,
                      )
                    : Container()
              ],
            ),
          );
        });
  }
}
