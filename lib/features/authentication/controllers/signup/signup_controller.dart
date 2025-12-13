import 'package:e_commerce/data/repositories/authentication_repo.dart';
import 'package:e_commerce/data/repositories/user/user_repository.dart';
import 'package:e_commerce/features/authentication/models/user_model.dart';
import 'package:e_commerce/features/authentication/screens/signup/email_verify.dart';
import 'package:e_commerce/utils/helpers/network_manager.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:e_commerce/utils/popups/snackbar_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //variables

  RxBool isPasswordVisible = false.obs;
  RxBool privacyPolicy = false.obs;
//signup key for form
  final signUpKey = GlobalKey<FormState>();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();

  Future<void> RegisterUser() async {
    try {
      //screen loading
      UFullScreenLoader.openLoadingDialog(
          'We are processing your information...');

      //check internet
      bool isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        UFullScreenLoader.stopLoading();
        USnackBarHelpers.warningSnackBar(title: 'No internet connection');
        return;
      }
      //check privacy policy
      if (!privacyPolicy.value) {
        UFullScreenLoader.stopLoading();
        USnackBarHelpers.warningSnackBar(
            title: 'Accept privacy policy',
            message:
                'In order to create a account you must check privacy policy and rules...');
        return;
      }
      // Form validation
      if (!signUpKey.currentState!.validate()) {
        UFullScreenLoader.stopLoading();
        return;
      }

      //Register user on firebase
      UserCredential userCredential = await AuthenticationRepository.instance
          .RegisterUser(email.text.trim(), password.text.trim());
//    Create user model
      UserModel userModel = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text,
          lastName: lastName.text,
          username: '${firstName.text}${lastName.text}123456789',
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '');

      //calling user repository and save
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(userModel);
//    Success msg
      USnackBarHelpers.successSnackBar(
          title: 'Congratulation', message: 'Your account has been created!');
      //close loading
      UFullScreenLoader.stopLoading();

      // Verifying email
      Get.to(() => VerifyEmailScreen(
            email: email.text,
          ));
      ;
    } catch (e) {
      UFullScreenLoader.stopLoading();
      USnackBarHelpers.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
