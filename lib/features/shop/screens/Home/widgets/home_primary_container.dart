import 'package:e_commerce/common/widgets/custom_shapes/Ucontainer.dart';
import 'package:e_commerce/common/widgets/custom_shapes/rounded_edges_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Uprimary_header extends StatelessWidget {
  const Uprimary_header({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return URoundedEdges(
      child: Container(
        height: USizes.homePrimaryHeaderHeight,
        color: UColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,

              //Container

              child: UContainer(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroudColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
              top: 50,
              right: -250,

              //Circular Container

              child: UContainer(
                height: USizes.homePrimaryHeaderHeight,
                width: USizes.homePrimaryHeaderHeight,
                backgroudColor: UColors.white.withValues(alpha: 0.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
