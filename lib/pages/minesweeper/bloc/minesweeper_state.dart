import 'package:equatable/equatable.dart';
import 'package:flutter_samples/pages/minesweeper/model/tile.dart';

import '../util/foundation.dart';

class MinesweeperState extends Equatable {
  const MinesweeperState({required this.tiles, required this.remainingMines});

  const MinesweeperState.initial()
      : this(
          tiles: const [],
          remainingMines: MinesweeperFoundation.mineCount,
        );

  final List<List<Tile>> tiles;
  final int remainingMines;

  MinesweeperState copyWith({
    List<List<Tile>>? tiles,
    int? remainingMines,
  }) {
    return MinesweeperState(
      tiles: tiles ?? this.tiles,
      remainingMines: remainingMines ?? this.remainingMines,
    );
  }

  @override
  List<Object?> get props => [];
}
