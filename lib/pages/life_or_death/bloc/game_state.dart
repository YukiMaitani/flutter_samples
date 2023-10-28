import 'package:equatable/equatable.dart';

class GameState extends Equatable {
  final int? lifeIndex;
  final int? answerIndex;
  final bool? isCorrect;
  final int lifeCount;
  final int dieCount;

  const GameState(
      {this.lifeIndex,
      this.answerIndex,
      this.isCorrect,
      this.lifeCount = 0,
      this.dieCount = 0});

  @override
  List<Object?> get props => [lifeIndex, answerIndex, isCorrect];
}
