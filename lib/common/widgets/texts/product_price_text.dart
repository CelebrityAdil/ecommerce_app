import 'package:flutter/material.dart';

class UproductPriceText extends StatelessWidget {
  const UproductPriceText({
    super.key,
    this.CurrentSign = '\$',
    required this.Price,
    this.maxLines = 1,
    this.isLarge = false,
    this.LineThrough = false,
  });
  final String CurrentSign, Price;
  final int maxLines;
  final isLarge, LineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      CurrentSign + Price,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: LineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!
        ..apply(decoration: LineThrough ? TextDecoration.lineThrough : null),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
