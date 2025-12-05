import 'package:e_commerce/common/styles/shadow.dart';
import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_text_verifyicon.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_text.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UproductCardVertical extends StatelessWidget {
  const UproductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: UShadow.verticalProductShadow,
            borderRadius: BorderRadius.circular(USizes.productImageRadius),
            color: dark ? UColors.darkGrey : UColors.white),
        child: Column(
          children: [
            //Thumnail favourite button and discount tag
            URoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(USizes.sm),
              backgroundColor: dark ? UColors.dark : UColors.light,
              child: Stack(
                children: [
                  URoundedImage(imageUrl: UImages.productImage15),

                  //Discount tag
                  Positioned(
                    top: 12.0,
                    child: URoundedContainer(
                      radius: USizes.sm,
                      backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: USizes.sm, vertical: USizes.xs),
                      child: Text(
                        '20%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: UColors.black),
                      ),
                    ),
                  ),

                  //Heart Icon

                  Positioned(
                      right: 0,
                      top: 0,
                      child: UCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),

            SizedBox(
              height: USizes.spaceBtwItems / 2,
            ),

            // product  details
            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //product tile

                  UProductTitleText(
                    title: 'Blue Bata Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: USizes.spaceBtwItems / 2),

                  //prodcut brand
                  UBrandTextwithVerifier(
                    title: 'Bata ',
                  ),
                ],
              ),
            ),
            Spacer(),
            // price and add button

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price

                Padding(
                  padding: EdgeInsetsGeometry.only(left: USizes.sm),
                  child: UproductPriceText(
                    Price: '76',
                  ),
                ),
                // Add button

                Container(
                  width: USizes.iconLg * 1.2,
                  height: USizes.iconLg * 1.2,
                  decoration: BoxDecoration(
                      color: UColors.primary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            USizes.borderRadiusMd,
                          ),
                          bottomRight:
                              Radius.circular(USizes.productImageRadius))),
                  child: Icon(
                    Iconsax.add,
                    color: UColors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
