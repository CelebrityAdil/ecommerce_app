import 'package:e_commerce/common/widgets/image_text/vertical_image_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class UHomeCategores extends StatelessWidget {
  const UHomeCategores({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: USizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            UTexts.popularCategories,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: UColors.white),
          ),

          SizedBox(height: USizes.spaceBtwItems),

          // FIX: ListView needs fixed height
          SizedBox(
            height: 90,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: USizes.spaceBtwItems,
              ),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return UVerticalImageText(
                  title: 'Sport Categories',
                  image: UImages.sportsIcon,
                  textcolor: UColors.white,
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
