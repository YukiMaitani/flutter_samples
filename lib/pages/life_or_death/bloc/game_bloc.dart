import 'dart:math';

import 'package:bloc/bloc.dart';

import 'game_event.dart';
import 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState(lifeIndex: Random().nextInt(2))) {
    on<GameStartEvent>((event, emit) {
      emit(GameState(lifeIndex: Random().nextInt(2)));
    });
    on<GameAnswerEvent>((event, emit) {
      emit(GameState(
          lifeIndex: state.lifeIndex,
          answerIndex: event.answerIndex,
          isCorrect: state.lifeIndex == event.answerIndex));
    });
  }
}
