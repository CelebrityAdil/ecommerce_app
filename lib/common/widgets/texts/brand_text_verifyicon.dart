import 'package:e_commerce/common/widgets/texts/brand_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UBrandTextwithVerifier extends StatelessWidget {
  const UBrandTextwithVerifier({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textcolor = UColors.primary,
    this.iconColor,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textcolor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: UBrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextsize: brandTextSizes,
            color: textcolor,
          ),
        ),
        SizedBox(
          width: USizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: UColors.primary,
          size: USizes.iconXs,
        ),
      ],
    );
  }
}
