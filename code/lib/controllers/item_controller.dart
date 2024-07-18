import 'package:get/get.dart';

class ItemController extends GetxController {
  var itemCount = 1.obs;
  final itemPrice = 4.99;

  void incrementItem() {
    itemCount.value++;
  }

  void decrementItem() {
    if (itemCount.value > 1) {
      itemCount.value--;
    }
  }

  double get totalPrice => itemCount.value * itemPrice;

}