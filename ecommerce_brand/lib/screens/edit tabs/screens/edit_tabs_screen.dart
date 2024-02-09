import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class EditTabsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EditTabsScreen();
  }
}

class _EditTabsScreen extends State<EditTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
