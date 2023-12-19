import 'package:flutter/material.dart';

class CurvedAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(0, size.height - 30, 30, size.height - 30);
    path.lineTo(size.width - 30, size.height - 30);
    path.quadraticBezierTo(
        size.width, size.height - 30, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
