import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ULoginFooter extends StatelessWidget {
  const ULoginFooter({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(height: USizes.spaceBtwSections),
        Expanded(
            child: Divider(
          indent: 60,
          endIndent: 5,
          thickness: 0.5,
          color: dark ? UColors.darkGrey : UColors.grey,
        )),
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Expanded(
            child: Divider(
          indent: 5,
          endIndent: 60,
          thickness: 0.5,
        ))
      ],
    );
  }
}
