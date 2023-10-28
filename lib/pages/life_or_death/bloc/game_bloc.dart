import 'dart:math';

import 'package:bloc/bloc.dart';

import 'game_event.dart';
import 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState(lifeIndex: Random().nextInt(2))) {
    on<GameStartEvent>((event, emit) {
      emit(GameState(
          lifeIndex: Random().nextInt(2),
          lifeCount: state.lifeCount,
          dieCount: state.dieCount));
    });
    on<GameAnswerEvent>((event, emit) {
      final isCorrect = state.lifeIndex == event.answerIndex;
      emit(GameState(
          lifeIndex: state.lifeIndex,
          answerIndex: event.answerIndex,
          isCorrect: isCorrect,
          lifeCount: isCorrect ? state.lifeCount + 1 : state.lifeCount,
          dieCount: isCorrect ? state.dieCount : state.dieCount + 1));
    });
  }
}
