import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:image/image.dart' as img;

class MaskPainter extends CustomPainter {
  const MaskPainter(this.points, this.image);
  final List<Offset> points;
  final img.Image image;

  @override
  void paint(Canvas canvas, Size size) {
    for (final Offset point in points) {
      final paint = Paint()
        ..color = const Color(0xFFFF0000)
        ..strokeWidth = 1
        ..strokeCap = StrokeCap.round;
      canvas.drawPoints(PointMode.points, [point], paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
