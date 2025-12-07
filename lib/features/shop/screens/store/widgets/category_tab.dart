import 'package:e_commerce/common/brand/brand_showcase.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading_product.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
          child: Column(
            children: [
              UbrandShowcase(
                images: [
                  UImages.productImage47,
                  UImages.productImage46,
                  UImages.productImage48
                ],
              ),
              UbrandShowcase(
                images: [
                  UImages.productImage47,
                  UImages.productImage46,
                  UImages.productImage48
                ],
              ),
              SizedBox(
                height: USizes.spaceBtwItems,
              ),
              USectionHeading(
                title: 'You might like',
                buttonTitle: "view All",
              ),
              UGridLayout(
                  itemCount: 4,
                  itemBuilder: (context, Index) {
                    return UproductCardVertical();
                  }),
              SizedBox(
                height: USizes.spaceBtwSections,
              ),
            ],
          ),
        )
      ],
    );
  }
}
