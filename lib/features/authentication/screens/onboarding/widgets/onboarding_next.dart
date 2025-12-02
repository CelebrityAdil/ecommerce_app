import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class UElevated_button extends StatelessWidget {
  const UElevated_button({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Obx(() => ElevatedButton(
              onPressed: controller.Nextpage,
              child: Text(
                controller.currentIndex.value == 2 ? 'Get Started' : 'Next',
              ),
            )),
      ),
    );
  }
}
