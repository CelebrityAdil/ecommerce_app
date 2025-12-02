import 'package:e_commerce/common/widgets/button/elevatedbutton.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/privacy_policy.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First and last name

        Row(
          children: [
            Expanded(
                child: TextFormField(
              decoration: InputDecoration(
                  labelText: UTexts.firstName, prefixIcon: Icon(Iconsax.user)),
            )),
            SizedBox(
              width: USizes.spaceBtwInputFields,
            ),
            Expanded(
                child: TextFormField(
                    decoration: InputDecoration(
                        labelText: UTexts.lastName,
                        prefixIcon: Icon(Iconsax.user)))),
          ],
        ),

        // Signup Form

        TextFormField(
          decoration: InputDecoration(
              labelText: UTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
        ),

        SizedBox(
          height: USizes.spaceBtwInputFields,
        ),

        TextFormField(
          decoration: InputDecoration(
              labelText: UTexts.phoneNumber, prefixIcon: Icon(Iconsax.call)),
        ),

        SizedBox(
          height: USizes.spaceBtwInputFields,
        ),

        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye),
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
        UElevatedButton(child: Text(UTexts.createAccount), onPressed: () {})
      ],
    );
  }
}
