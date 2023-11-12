import 'dart:ui';

import 'package:equatable/equatable.dart';

abstract class CollisionEvent extends Equatable {
  const CollisionEvent();
  @override
  List<Object> get props => [];
}

class UpdatePointEvent extends CollisionEvent {
  final Offset touchPoint;
  const UpdatePointEvent(this.touchPoint);
  @override
  List<Object> get props => [touchPoint];
}
