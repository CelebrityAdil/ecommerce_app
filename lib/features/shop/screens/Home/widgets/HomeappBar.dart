import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/cart/UcartIcon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class UHomeappBar extends StatelessWidget {
  const UHomeappBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      //Title
      title: Column(
        children: [
          Text(
            UTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: UColors.grey),
          ),
          Text(
            UTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: UColors.white),
          )
        ],
      ),

      // Shopiing cart

      actions: [UcartCounterIcon()],

      leadingOnPressed: () {},
    );
  }
}
