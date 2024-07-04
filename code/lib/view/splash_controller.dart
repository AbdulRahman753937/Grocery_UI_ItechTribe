import 'package:get/get.dart';
import 'package:groceries/view/home/home_view.dart';

class SplashController extends GetxController{
  @override
  void onReady() {
    navigateToHome();
    super.onReady();
  }

  Future navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(()=> HomeScreen());
  }
}