import 'package:e_commerce/common/widgets/button/elevatedbutton.dart';
import 'package:e_commerce/features/authentication/screens/forgot_password/forgot_password.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: UTexts.password,
              suffixIcon: Icon(Iconsax.eye)),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),

        //Checkboxx and Forget passsowrd part

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text(UTexts.rememberMe),
            TextButton(
                onPressed: () => Get.to(() => ForgetPasswordScreen()),
                child: Text(UTexts.forgetPassword)),
          ],
        ),

        SizedBox(
          height: USizes.spaceBtwSections,
        ),

        //SignIn Button

        UElevatedButton(
          onPressed: () => Get.to(() => NavigationMenu()),
          child: Text(UTexts.signIn),
        ),
        SizedBox(
          height: USizes.spaceBtwItems / 2,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Get.to(() => SignupScreen()),
            child: Text(UTexts.createAccount),
          ),
        )
      ],
    );
  }
}
