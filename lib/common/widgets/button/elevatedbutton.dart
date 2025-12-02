import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class UElevatedButton extends StatelessWidget {
  const UElevatedButton({
    super.key,
    required this.child,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(onPressed: onPressed, child: child));
  }
}
