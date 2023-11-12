import 'package:bloc/bloc.dart';

import 'collision_event.dart';
import 'collision_state.dart';

class CollisionBloc extends Bloc<CollisionEvent, CollisionState> {
  CollisionBloc() : super(const CollisionState()) {
    on<UpdatePointEvent>((event, emit) {
      emit(CollisionState(
        point: state.point.copyWith(
          center: event.touchPoint,
        ),
      ));
    });
  }
}
