import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter_samples/pages/collision_detection/model/box.dart';

class CollisionState extends Equatable {
  final point = const Box(id: 0, center: Offset(100, 300), type: BoxType.point);
  final polygon =
      const Box(id: 1, center: Offset(200, 300), type: BoxType.polygon);
  @override
  List<Object?> get props => [point, polygon];
}
