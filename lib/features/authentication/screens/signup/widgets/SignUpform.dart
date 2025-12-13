import 'package:e_commerce/common/widgets/button/elevatedbutton.dart';
import 'package:e_commerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/privacy_policy.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    return Form(
      key: controller.signUpKey,
      child: Column(
        children: [
          // First and last name

          Row(
            children: [
              Expanded(
                  child: TextFormField(
                controller: controller.firstName,
                validator: (value) =>
                    UValidator.validateEmptyText('First Name', value),
                decoration: InputDecoration(
                    labelText: UTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              )),
              SizedBox(
                width: USizes.spaceBtwInputFields,
              ),
              Expanded(
                  child: TextFormField(
                      controller: controller.lastName,
                      validator: (value) =>
                          UValidator.validateEmptyText('Last Name', value),
                      decoration: InputDecoration(
                          labelText: UTexts.lastName,
                          prefixIcon: Icon(Iconsax.user)))),
            ],
          ),
          SizedBox(
            height: USizes.spaceBtwInputFields,
          ),
          // Signup Form

          TextFormField(
            controller: controller.email,
            validator: (value) => UValidator.validateEmail(value),
            decoration: InputDecoration(
                labelText: UTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),
          ),

          SizedBox(
            height: USizes.spaceBtwInputFields,
          ),

          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => UValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
                labelText: UTexts.phoneNumber, prefixIcon: Icon(Iconsax.call)),
          ),

          SizedBox(
            height: USizes.spaceBtwInputFields,
          ),

          Obx(
            () => TextFormField(
              obscureText: !controller.isPasswordVisible.value,
              controller: controller.password,
              validator: (value) => UValidator.validatePassword(value),
              decoration: InputDecoration(
                labelText: UTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                    onPressed: () => controller.isPasswordVisible.value =
                        !controller.isPasswordVisible.value,
                    icon: Icon(controller.isPasswordVisible.value
                        ? Iconsax.eye
                        : Iconsax.eye_slash)),
              ),
            ),
          ),

          SizedBox(
            height: USizes.spaceBtwInputFields / 2,
          ),

          //                  Privacy policy

          PrivacyPolicy(),

          SizedBox(
            height: USizes.spaceBtwItems,
          ),

          // Button create account
          UElevatedButton(
              child: Text(UTexts.createAccount),
              onPressed: () => controller.RegisterUser())
        ],
      ),
    );
  }
}
