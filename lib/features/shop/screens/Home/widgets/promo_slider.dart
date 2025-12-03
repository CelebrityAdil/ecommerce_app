import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/image/rounded_image.dart';
import 'package:e_commerce/features/shop/controllers/home/home_controller.dart';
import 'package:e_commerce/features/shop/screens/Home/widgets/banner_dot_navigation.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class UPromoslider extends StatelessWidget {
  const UPromoslider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (banner) => URoundedImage(imageUrl: banner),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: (index, reason) => controller.onPageChanged(index),
          ),
        ),

        SizedBox(
          height: USizes.spaceBtwItems,
        ),
        // Three dots
        BannerDotNavigation()
      ],
    );
  }
}
