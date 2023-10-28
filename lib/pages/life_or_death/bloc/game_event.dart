import 'package:equatable/equatable.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();
  @override
  List<Object> get props => [];
}

class GameStartEvent extends GameEvent {}

class GameAnswerEvent extends GameEvent {
  final int answerIndex;
  const GameAnswerEvent(this.answerIndex);
  @override
  List<Object> get props => [answerIndex];
}
