import 'dart:async';

import 'package:e_commerce/common/widgets/screens/success_screen.dart';
import 'package:e_commerce/data/repositories/authentication_repo.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/popups/snackbar_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instace => Get.find();
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();

    super.onInit();
  }

// Send email verification
  Future<void> sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      USnackBarHelpers.successSnackBar(
          title: 'Email sent',
          message: 'Please check you inbox and verify email....');
    } catch (e) {
      USnackBarHelpers.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  // Timer for autoRedirect to Screen
  void setTimerForAutoRedirect() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) async {
        await FirebaseAuth.instance.currentUser!.reload();
        final user = FirebaseAuth.instance.currentUser;
        if (user?.emailVerified ?? false) {
          timer.cancel();
          Get.off(() => SuccessScreen(
                title: UTexts.accountCreatedTitle,
                subtitle: UTexts.accountCreatedSubTitle,
                image: UImages.successfulPaymentIcon,
                onTap: () => AuthenticationRepository.instance.screenRedirect(),
              )); // SuccessScreen
        }
      },
    ); // Timer.periodic
  }

  // Function for continue button in verfication screen to check usr verified
  Future<void> checkEmailVerificationStatus() async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null && currentUser.emailVerified) {
        Get.off(() => SuccessScreen(
              title: UTexts.accountCreatedTitle,
              subtitle: UTexts.accountCreatedSubTitle,
              image: UImages.successfulPaymentIcon,
              onTap: () => AuthenticationRepository.instance.screenRedirect(),
            ));
      }
    } catch (e) {
      USnackBarHelpers.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
