import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/core/utils/widgets/imageAssetsCustom.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/blocs%20animation/bloc_animation.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/blocs%20animation/event_animation.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/blocs/home_ui_bloc.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/blocs/home_ui_event.dart';
import 'package:ecommerce_brand/screens/home%20ui%20riviu/model/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:scrolls_to_top/scrolls_to_top.dart';

import '../blocs/home_ui_state.dart';

// ignore: must_be_immutable
class MarsonList extends StatefulWidget {
  dynamic event; //
  int index;
  final GlobalKey<RefreshIndicatorState> refreshIndicator;
  MarsonList(
      {required this.event,
      required this.index,
      required this.refreshIndicator,
      super.key});
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return _MarsonList();
  }
}

// ignore: must_be_immutable
class _MarsonList extends State<MarsonList> with AutomaticKeepAliveClientMixin {
  final _scrollController = ScrollController();
  bool isLoading = false;
  int page = 1;
  late ProductBloc _bloc;

  @override
  void initState() {
    super.initState();
    double oldOffset = 0.0;

    _bloc = context.read<ProductBloc>();
    _scrollController.addListener(() {
      if (_scrollController.offset > 100) {
        // chưa scale màn hình
        if (_scrollController.offset > oldOffset) {
          context.read<AnimationBloc>().add(ScrollDown()); // scroll Down
        } else if (_scrollController.offset < oldOffset - 150) {
          context.read<AnimationBloc>().add(ScrollUp()); // Scroll Up not Quick
        } else {
          context.read<AnimationBloc>().add(ScrollUpQuick()); // scroll Up Quick
        }
      }
      oldOffset = _scrollController.offset;
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 400) {
        // print(">>>> check position: " + _scrollController.position.pixels);
        loadMore();
      }
    });
  }

  @override
  bool get wantKeepAlive => true;

  void loadMore() {
    if (isLoading == false) {
      // sửa lại true
      return;
    }
    isLoading = false;
    if (widget.index == 1) {
      _bloc.add(ProductScreenTab1Fetched(page: ++page));
    } else if (widget.index == 2) {
      _bloc.add(ProductScreenTab2Fetched(page: ++page));
    } else {
      _bloc.add(ProductScreenTab3Fetched(page: ++page));
    }
  }

  Future<void> refresh() async {
    page = 0;
    if (widget.index == 1) {
      _bloc.add(ProductScreenTab1Fetched(page: ++page));
    } else if (widget.index == 2) {
      _bloc.add(ProductScreenTab2Fetched(page: ++page));
    } else {
      _bloc.add(ProductScreenTab3Fetched(page: ++page));
    }
  }

  Future<void> goHeadList() async {
    _scrollController.animateTo(
      0 * 100,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        List<ProductModel> products = [];
        if (state is ProductLoadingInitial) {
          _bloc.add((widget.event));
          isLoading = true;
        } else if (state is ProductLoadingTab01Success) {
          isLoading = true;
          products = state.products ?? [];
        } else if (state is ProductLoadingTab02Success) {
          isLoading = true;
          products = state.products ?? [];
        } else if (state is ProductLoadingTab03Success) {
          isLoading = true;
          products = state.products ?? [];
        } else if (state is ProductLoadingFailure) {
          return Center(child: Text("Error: ${state.mess ?? "404"}"));
        }
        return listDataView(_scrollController, products);
      },
    );
  }

  listDataView(ScrollController scrollController, List<ProductModel> products) {
    return ScrollsToTop(
      onScrollsToTop: (event) => goHeadList(),
      child: RefreshIndicator(
        // key: widget.refreshIndicator,  // consider
        onRefresh: () => refresh(),
        child: MasonryGridView.builder(
            addAutomaticKeepAlives: true,
            controller: _scrollController,
            shrinkWrap: false,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemCount: products.length,
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
                      child: CustomImage2(
                        url: products[index].imageDefault ??
                            "https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/12/songoku-9.jpg",
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7, bottom: 2),
                        child: Text(
                          products[index].productName ?? "Loading",
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
                                  child: Assets.imagesImageAvatar01.image(),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(left: 3),
                                    child: Text(
                                      products[index].bst ?? "Loading",
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
                                  products[index].lineSap ?? "0",
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
            }),
      ),
    );
  }
}
