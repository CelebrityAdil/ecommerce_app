import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UsocialButton extends StatelessWidget {
  const UsocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BuildMethod(UImages.googleIcon, () {}),
        SizedBox(
          width: USizes.spaceBtwItems,
        ),
        BuildMethod(UImages.facebookIcon, () {})
      ],
    );
  }

  Container BuildMethod(String image, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
          onPressed: onPressed,
          icon: Image.asset(
            image,
            height: USizes.iconMd,
            width: USizes.iconMd,
          )),
    );
  }
}
