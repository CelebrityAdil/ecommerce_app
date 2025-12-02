import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/common/widgets/button/social_button.dart';
import 'package:e_commerce/common/widgets/login_signup/login_footer.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/SignUpform.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: USizes.spaceBtwSections,
              ),

              // FORM
              SignupForm(),

              SizedBox(
                height: USizes.spaceBtwSections,
              ),

              // Divider

              ULoginFooter(title: UTexts.orSignupWith),

              SizedBox(
                height: USizes.spaceBtwSections,
              ),

              //Footer

              UsocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
