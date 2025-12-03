import 'package:e_commerce/common/widgets/text_field/search_bar.dart';
import 'package:e_commerce/features/shop/controllers/home/home_controller.dart';
import 'package:e_commerce/features/shop/screens/Home/widgets/Home_categories.dart';
import 'package:e_commerce/features/shop/screens/Home/widgets/HomeappBar.dart';
import 'package:e_commerce/features/shop/screens/Home/widgets/home_primary_container.dart';
import 'package:e_commerce/features/shop/screens/Home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
        body: Column(
      children: [
        // Upper Portion of Home screen
        Stack(
          children: [
            // Header with +20
            SizedBox(
              height: USizes.homePrimaryHeaderHeight + 10,
            ),

            // Primary Header container
            Uprimary_header(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App Bar
                  UHomeappBar(),

                  SizedBox(height: USizes.spaceBtwSections),

                  // Home Categories
                  const UHomeCategores(),
                ],
              ),
            ),

            // Search Bar (FIX: positioned correctly)
            UsearchBar(),
          ],
        ),

//        Below part of Home Screen
//        Banners
        Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: UPromoslider(banners: [
            UImages.homeBanner1,
            UImages.homeBanner2,
            UImages.homeBanner3,
            UImages.homeBanner4,
            UImages.homeBanner5
          ]),
        )
      ],
    ));
  }
}
