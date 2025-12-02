import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Uskipbutton extends StatelessWidget {
  const Uskipbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Obx(() => controller.currentIndex.value == 2
        ? SizedBox()
        : Positioned(
            top: UDeviceHelper.getAppBarHeight(),
            right: 0,
            child: TextButton(
                onPressed: controller.Skippage, child: Text("Skip"))));
  }
}
