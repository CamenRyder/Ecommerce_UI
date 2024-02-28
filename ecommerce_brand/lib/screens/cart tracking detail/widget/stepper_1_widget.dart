import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class StepperFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: const Text(
              "Your package is being prepared",
              style: AppTypography.header,
            ),
          ),
          const Text(
            "Arrival estimate: April 15",
            style: AppTypography.bodyNormal16,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 5),
            child: const Text(
              "The seller is preparing your package",
              style: AppTypography.bodyNormal16Black,
            ),
          ),
          const Text(
            "April 15,  22:36",
            style: AppTypography.bodyNormal15,
          ),
        ]);
  }
}
