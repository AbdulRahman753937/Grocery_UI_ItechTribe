import 'package:get/get.dart';

class FiltersController extends GetxController {
  var isChecked = List<bool>.filled(8, false).obs;

  void toggleCheckbox(int index) {
    isChecked[index] = !isChecked[index];
  }
}
