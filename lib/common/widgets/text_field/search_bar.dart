import 'package:e_commerce/common/styles/shadow.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UsearchBar extends StatelessWidget {
  const UsearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: 0,
      right: USizes.spaceBtwSections,
      left: USizes.spaceBtwSections,
      child: Container(
        height: USizes.searchBarHeight,
        padding: EdgeInsets.symmetric(horizontal: USizes.md),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
          color: dark ? UColors.dark : UColors.light,
          boxShadow: UShadow.searchBarShadow,
        ),
        child: Row(
          children: [
            Icon(
              Iconsax.search_normal,
              color: UColors.darkGrey,
            ),
            SizedBox(
              width: USizes.spaceBtwItems,
            ),
            Text(
              UTexts.searchBarTitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
