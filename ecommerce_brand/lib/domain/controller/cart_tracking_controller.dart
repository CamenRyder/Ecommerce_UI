import 'package:get/get.dart';

class CartTrackingController extends GetxController {
  RxBool isExpand = false.obs;
  RxBool isOrders = true.obs;
  RxBool isMessages = false.obs;

  void selectOrder() {
    isOrders.value = true;
    isMessages.value = false;
  }

  selectMessages() {
    isOrders.value = false;
    isMessages.value = true;
  }
}
