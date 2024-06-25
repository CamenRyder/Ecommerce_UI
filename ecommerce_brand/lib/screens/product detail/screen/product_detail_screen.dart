// ignore_for_file: prefer_const_constructors
import 'package:ecommerce_brand/core/utils/constant/string_utils.dart';
import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:ecommerce_brand/screens/product%20detail/widgets/appbar_customer_widget.dart';
import 'package:ecommerce_brand/screens/product%20detail/widgets/button_bottom_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductDetailScreenState();
  }
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundWhite,
        body: SafeArea(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: Constant.paddingHorizontal),
            child: Column(
              children: [
                AppbarCustomerWidget(),
                Expanded(
                    child: Container(
                  color: Colors.red,
                )),
                ButtonBottomWidget(),
              ],
            ),
          ),
        ));
  }
}
