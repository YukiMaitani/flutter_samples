import 'package:equatable/equatable.dart';

class GameState extends Equatable {
  final int? lifeIndex;
  final int? answerIndex;
  final bool? isCorrect;
  const GameState({this.lifeIndex, this.answerIndex, this.isCorrect});

  @override
  List<Object?> get props => [lifeIndex, answerIndex, isCorrect];
}
