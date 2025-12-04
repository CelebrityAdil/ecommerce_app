import 'package:flutter/material.dart';

class USectionHeading extends StatelessWidget {
  const USectionHeading({
    super.key,
    this.textColor,
    required this.title,
    required this.buttonTitle,
    this.onPressed,
  });
  final Color? textColor;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(onPressed: () {}, child: Text(buttonTitle))
      ],
    );
  }
}
