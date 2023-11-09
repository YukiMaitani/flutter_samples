import 'package:bloc/bloc.dart';

import 'collision_event.dart';
import 'collision_state.dart';

class CollisionBloc extends Bloc<CollisionEvent, CollisionState> {
  CollisionBloc() : super(CollisionState());
}
