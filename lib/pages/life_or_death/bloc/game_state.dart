import 'package:equatable/equatable.dart';

abstract class GameState extends Equatable {
  const GameState();
}


class GameStartedState extends GameState {
  const GameStartedState();

  @override
  List<Object?> get props => [];
}
