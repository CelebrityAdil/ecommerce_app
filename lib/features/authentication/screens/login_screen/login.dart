import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/common/widgets/button/social_button.dart';
import 'package:e_commerce/common/widgets/login_signup/login_footer.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login_screen/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: Upadding.screenpadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header file
              ULoginHeader(),
              SizedBox(height: USizes.spaceBtwSections),

              //Form
              ULoginForm(),
              //Footer
              ULoginFooter(
                title: UTexts.orSignInWith,
              ),
              SizedBox(
                height: USizes.spaceBtwSections,
              ),
              //SignInOptions
              UsocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
