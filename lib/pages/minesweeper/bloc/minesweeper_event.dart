import 'package:equatable/equatable.dart';

abstract class MinesweeperEvent extends Equatable {
  const MinesweeperEvent();
  @override
  List<Object> get props => [];
}

class SelectTile extends MinesweeperEvent {
  final int selectIndex;
  const SelectTile(this.selectIndex);
  @override
  List<Object> get props => [selectIndex];
}

class ToggleFlagMode extends MinesweeperEvent {
  const ToggleFlagMode();
}
