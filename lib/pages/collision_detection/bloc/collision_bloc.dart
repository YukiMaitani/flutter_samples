import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flame/components.dart';

import 'collision_event.dart';
import 'collision_state.dart';

class CollisionBloc extends Bloc<CollisionEvent, CollisionState> {
  CollisionBloc() : super(const CollisionState()) {
    on<UpdatePointEvent>((event, emit) {
      final isTargetPolygon = state.isTargetPolygon;
      final polygonColor =
          _existInPolygon() ? const Color(0xFFFF0000) : const Color(0xFF000000);
      if (isTargetPolygon) {
        emit(CollisionState(
          polygon: state.polygon.copyWith(
            center: event.touchPoint,
            color: polygonColor,
          ),
          point: state.point,
          selectedId: 1,
        ));
      } else {
        emit(CollisionState(
          point: state.point.copyWith(
            center: event.touchPoint,
          ),
          polygon: state.polygon.copyWith(color: polygonColor),
          selectedId: 0,
        ));
      }
    });
    on<SetIndexEvent>((event, emit) {
      final isTouchPolygon = _isTouchPolygon(event.touchPoint);
      emit(CollisionState(
          selectedId: isTouchPolygon ? 1 : 0,
          point: state.point,
          polygon: state.polygon));
    });
  }

  Vector2 _vec2FromOffset(Offset offset) => Vector2(offset.dx, offset.dy);

  bool _isTouchPolygon(Offset tapPoint) {
    final tappedArea = Path()
      ..addRect(Rect.fromCenter(center: tapPoint, width: 100, height: 100));
    final points = state.polygonPoints;
    for (int i = 0; i < points.length; i++) {
      final offset = points[i];
      if (tappedArea.contains(offset)) {
        return true;
      }
    }
    return false;
  }

  bool _isPolygonCW() {
    final polygonPoints = state.polygonPoints;
    final a = _vec2FromOffset(polygonPoints[0]);
    final b = _vec2FromOffset(polygonPoints[1]);
    final c = _vec2FromOffset(polygonPoints[2]);
    final ba = b - a;
    final bc = b - c;
    final cross = ba.cross(bc);
    return cross < 0;
  }

  bool _existInPolygon() {
    final polygonPoints = state.polygonPoints;
    final pVec = _vec2FromOffset(state.point.center);
    final vNum = polygonPoints.length;
    for (int i = 0; i < vNum; i++) {
      final cVec = _vec2FromOffset(polygonPoints[i]);
      final nVec = _vec2FromOffset(polygonPoints[(i + 1) % vNum]);
      final cnVec = nVec - cVec;
      final cpVec = pVec - cVec;
      final cross = cnVec.cross(cpVec);
      if (_isPolygonCW()) {
        if (cross < 0) {
          return false;
        }
      } else {
        if (cross > 0) {
          return false;
        }
      }
    }
    return true;
  }
}
