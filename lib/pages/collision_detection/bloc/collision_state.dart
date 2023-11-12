import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter_samples/pages/collision_detection/model/box.dart';

class CollisionState extends Equatable {
  const CollisionState({
    this.point =
        const Box(id: 0, center: Offset(100, 300), type: BoxType.point),
    this.polygon =
        const Box(id: 1, center: Offset(200, 300), type: BoxType.polygon),
  });
  final Box point;
  final Box polygon;
  List<Offset> get polygonPoints => [
        Offset(polygon.center.dx - 50, polygon.center.dy - 50),
        Offset(polygon.center.dx - 50, polygon.center.dy + 50),
        Offset(polygon.center.dx + 50, polygon.center.dy + 50),
        Offset(polygon.center.dx + 50, polygon.center.dy - 50),
      ];
  @override
  List<Object?> get props => [point, polygon];
}
