import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:e_commerce/common/widgets/products/cart/UcartIcon.dart';
import 'package:e_commerce/common/widgets/text_field/search_bar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Only keep one Stack content now — removed the second stack

        // Header with +20
        SizedBox(
          height: USizes.storePrimaryHeaderHeight + 10,
        ),

        // Primary Header container
        UPrimaryHeaderContainer(
          height: USizes.storePrimaryHeaderHeight,
          child: UAppBar(
            title: Text(
              'Store',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: Colors.white),
            ),
            actions: [UcartCounterIcon()],
            leadingOnPressed: () {},
          ),
        ),

        // Search Bar
        UsearchBar(),
      ],
    );
  }
}
