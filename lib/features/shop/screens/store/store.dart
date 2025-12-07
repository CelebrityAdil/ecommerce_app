import 'package:e_commerce/common/brand/brand_card.dart';
import 'package:e_commerce/common/widgets/appbar/tabs_bar.dart';
import 'package:e_commerce/common/widgets/texts/section_heading_product.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 370,
                pinned: true,
                floating: false,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
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
                                    (BuildContext context, int index) =>
                                        SizedBox(
                                  width: USizes.spaceBtwItems,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                bottom: UTabBar(tabs: [
                  Tab(
                    child: Text("Sports"),
                  ),
                  Tab(
                    child: Text("Furniture"),
                  ),
                  Tab(
                    child: Text("Electornics"),
                  ),
                  Tab(
                    child: Text("Clothes"),
                  ),
                  Tab(
                    child: Text("Cosmetics"),
                  ),
                ]),
              )
            ];
          },
          body: TabBarView(
            children: [
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
              UCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
