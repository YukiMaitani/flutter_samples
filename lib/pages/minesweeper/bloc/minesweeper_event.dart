import 'package:equatable/equatable.dart';

abstract class MinesweeperEvent extends Equatable {
  const MinesweeperEvent();
  @override
  List<Object> get props => [];
}

class MinesweeperStartEvent extends MinesweeperEvent {
  final int selectIndex;
  const MinesweeperStartEvent(this.selectIndex);
  @override
  List<Object> get props => [selectIndex];
}
