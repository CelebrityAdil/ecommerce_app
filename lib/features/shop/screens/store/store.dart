import 'package:e_commerce/common/brand/brand_card.dart';
import 'package:e_commerce/common/widgets/texts/section_heading_product.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 350,
              pinned: true,
              floating: true,
              flexibleSpace: Column(
                children: [
                  // Store Header
                  UStorePrimaryHeader(),
                  SizedBox(
                    height: USizes.spaceBtwSections,
                  ),

                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                        horizontal: USizes.defaultSpace),
                    child: Column(
                      children: [
                        // section heading
                        USectionHeading(
                            title: 'Brands', buttonTitle: 'view all'),

                        //BrandCard
                        SizedBox(
                          height: 80.0,
                          child: ListView.separated(
                            itemCount: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => UBrandCard(),
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                              width: USizes.spaceBtwItems,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
