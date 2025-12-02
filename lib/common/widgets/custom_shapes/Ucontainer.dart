import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class UContainer extends StatelessWidget {
  const UContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.backgroudColor = UColors.white,
    this.padding,
    this.margin,
  });
  final double width, height, radius;
  final Color backgroudColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroudColor,
      ),
    );
  }
}
