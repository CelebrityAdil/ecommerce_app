import 'package:flutter/material.dart';

class UcustomRoundededges extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();

    // First Curve

    path.lineTo(0, size.height - 40);
    Offset firstpointcurve1 = Offset(40, size.height);
    Offset secondpointcurve1 = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstpointcurve1.dx, firstpointcurve1.dy,
        secondpointcurve1.dx, secondpointcurve1.dy);

    // Second Curve

    Offset firstpointcurve2 = Offset(size.width - 40, size.height);
    Offset secondpointcurve2 = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(firstpointcurve2.dx, firstpointcurve2.dy,
        secondpointcurve2.dx, secondpointcurve2.dy);

    // Bottom To Top Line
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    return true;
  }
}
