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
    final a = _vec2FromOffset(polygonPoints[0]);
    final b = _vec2FromOffset(polygonPoints[1]);
    final c = _vec2FromOffset(polygonPoints[2]);
    final d = _vec2FromOffset(polygonPoints[3]);
    final ap = _vec2FromOffset(state.point.center) - a;
    final bp = _vec2FromOffset(state.point.center) - b;
    final cp = _vec2FromOffset(state.point.center) - c;
    final dp = _vec2FromOffset(state.point.center) - d;
    final ab = b - a;
    final bc = c - b;
    final cd = d - c;
    final da = a - d;
    final crossABP = ab.cross(ap);
    final crossBCP = bc.cross(bp);
    final crossCDP = cd.cross(cp);
    final crossDAP = da.cross(dp);
    if (_isPolygonCW()) {
      return crossABP > 0 && crossBCP > 0 && crossCDP > 0 && crossDAP > 0;
    } else {
      return crossABP < 0 && crossBCP < 0 && crossCDP < 0 && crossDAP < 0;
    }
  }
}
