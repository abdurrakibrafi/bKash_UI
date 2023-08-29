import 'package:flutter/material.dart';

class CurvedAppBarShape extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path()
      ..moveTo(rect.left, rect.top)
      ..lineTo(rect.left, rect.bottom - 22) // Curve starts here
      ..quadraticBezierTo(rect.left, rect.bottom, rect.left + 22, rect.bottom)
      ..lineTo(rect.right - 22, rect.bottom)
      ..quadraticBezierTo(rect.right, rect.bottom, rect.right, rect.bottom - 22)
      ..lineTo(rect.right, rect.top)
      ..close();
    return path;
  }
}
