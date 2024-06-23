import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SaveIntoCollectionController extends GetxController {
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