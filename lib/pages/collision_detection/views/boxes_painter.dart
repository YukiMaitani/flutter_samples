import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/collision_detection/bloc/collision_state.dart';

import '../model/box.dart';

class BoxesPainter extends CustomPainter {
  BoxesPainter(this.state);
  final CollisionState state;
  Box get point => state.point;
  Box get polygon => state.polygon;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(point.center, 5, paint..color = point.color);
    canvas.drawRect(
      Rect.fromCenter(
        center: polygon.center,
        width: 100,
        height: 100,
      ),
      paint..color = polygon.color,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
