import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    this.animation,
    this.title,
    this.subtitle,
  });

  final String? animation;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            // right: USizes.defaultSpace,
            // left: USizes.defaultSpace,
            top: UDeviceHelper.getAppBarHeight(),
            bottom: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Responsive Animation (won’t overflow)
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: Lottie.asset(animation!),
              ),

              const SizedBox(height: 30),

              Text(
                title!,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              Text(
                subtitle!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
