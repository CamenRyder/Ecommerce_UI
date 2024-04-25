import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MarsonList extends StatefulWidget {
  ScrollController scrollController;
  dynamic list;
  MarsonList({super.key, required this.scrollController, required this.list});
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return _MarsonList();
  }
}

// ignore: must_be_immutable
class _MarsonList extends State<MarsonList>  {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
        addAutomaticKeepAlives: true,
        controller: widget.scrollController,
        shrinkWrap: false,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: widget.list.length,
        itemBuilder: (_, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            color: AppColors.backgroundWhite,
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: widget.list[index].image.image(),
                ),
                SizedBox(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7, bottom: 2),
                    child: Text(
                      widget.list[index].name ?? "Loading",
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: widget.list[index].imageUserAva.image(),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 3),
                                child: Text(
                                  "${widget.list[index].userName}",
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.favorite_border_sharp,
                              size: 15,
                            ),
                            Text(
                              "${widget.list[index].favorite}",
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

}
