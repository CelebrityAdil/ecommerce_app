import 'package:e_commerce/features/authentication/screens/login_screen/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  final storage = GetStorage();

  final pageController = PageController();
  RxInt currentIndex = 0.obs;
  void UpdatepageIndicator(index) {
    currentIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void Nextpage() {
    if (currentIndex.value == 2) {
      storage.write('isFirstTime', false);
      Get.offAll(() => LoginScreen());
      return;
    }
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

  void Skippage() {
    currentIndex.value = 2;
    pageController.jumpToPage(currentIndex.value);
  }
}
