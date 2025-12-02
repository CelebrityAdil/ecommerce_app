import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/common/widgets/button/elevatedbutton.dart';
import 'package:e_commerce/features/authentication/screens/forgot_password/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: Upadding.screenpadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Text(
                  UTexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: USizes.spaceBtwItems / 2,
                ),
                Text(
                  UTexts.forgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),

                SizedBox(
                  height: USizes.spaceBtwSections * 2,
                ),
                // Form

                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: UTexts.email,
                        prefixIcon: Icon(Iconsax.direct_right),
                      ),
                    ),
                    SizedBox(
                      height: USizes.spaceBtwItems,
                    ),

                    // BUtton
                    UElevatedButton(
                        child: Text(UTexts.submit),
                        onPressed: () => Get.to(() => ResetPasswordScreen())),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
