import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/common/widgets/button/elevatedbutton.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/login.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.to(() => LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Upadding.screenpadding,
          child: Column(
            children: [
              //Image
              Image.asset(
                UImages.mailSentImage,
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
              ),
              SizedBox(
                height: USizes.spaceBtwItems,
              ),

              // Title

              Text(
                UTexts.resetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: USizes.spaceBtwItems,
              ),
              Text(
                'Unknownpro@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              // SubTitle
              Text(
                UTexts.resetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: USizes.spaceBtwItems,
              ),

              // DOne Button
              UElevatedButton(child: Text(UTexts.done), onPressed: () {}),

              //Resend email

              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(UTexts.resendEmail),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
