import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';

class StepperSecondWidget extends StatelessWidget {
  const StepperSecondWidget({super.key});

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
            "Your package is on it's way",
            style: AppTypography.header,
          ),
        ),
        const Text(
          "Arrival estimate: April 18",
          style: AppTypography.bodyNormal16,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 5),
          child: const Text(
            "Your package is near!",
            style: AppTypography.bodyNormal16Black,
          ),
        ),
        const Text(
          "April 15,  12:05",
          style: AppTypography.bodyNormal15,
        ),
    Container(
      margin: const EdgeInsets.only(top: 20, bottom: 5),
      child: const Text(
        "Your package is on route",
        style: AppTypography.bodyNormal16Black,
      ),
    ),
    const Text(
      "April 15,  09:25",
      style: AppTypography.bodyNormal15,
    ),
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 5),
          child: const Text(
            "Your package left the distribution center",
            style: AppTypography.bodyNormal16Black,
          ),
        ),
        const Text(
          "April 15,  04:47",
          style: AppTypography.bodyNormal15,
        ),
      ],
    );
  }
}
