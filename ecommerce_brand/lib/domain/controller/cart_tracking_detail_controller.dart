// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class CartTrackingDetailController extends GetxController {
  final isSecondStepper = false.obs;

  void checkingThis() {
    isSecondStepper.value = !isSecondStepper.value;
  }
}
