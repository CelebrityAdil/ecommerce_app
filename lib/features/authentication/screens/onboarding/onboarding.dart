import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboardingpage.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: USizes.defaultSpace),
      child: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.UpdatepageIndicator,
            children: [
              OnboardingPage(
                animation: UImages.onboarding1Animation,
                title: UTexts.onBoardingTitle1,
                subtitle: UTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                animation: UImages.onboarding2Animation,
                title: UTexts.onBoardingTitle2,
                subtitle: UTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                animation: UImages.onboarding3Animation,
                title: UTexts.onBoardingTitle3,
                subtitle: UTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnboardingDotNavigation(),
          UElevated_button(),
          Uskipbutton(),
        ],
      ),
    );
  }
}

// class UElevated_button extends StatelessWidget {
//   const UElevated_button({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       left: 0,
//       right: 0,
//       bottom: USizes.spaceBtwItems,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: ElevatedButton(
//           onPressed: () {},
//           child: ,
//         ),
//       ),
//     );
//   }
// }
