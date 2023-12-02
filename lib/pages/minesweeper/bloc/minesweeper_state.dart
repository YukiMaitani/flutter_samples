import 'package:equatable/equatable.dart';
import 'package:flutter_samples/pages/minesweeper/model/tile.dart';

import '../util/foundation.dart';

enum GameState { before, playing, won, lost }

class MinesweeperState extends Equatable {
  const MinesweeperState({required this.tiles, required this.remainingMines, required this.isFlagMode});

  MinesweeperState.initial()
      : this(
          tiles: List.generate(
              MinesweeperFoundation.height,
              (y) => List.generate(
                  MinesweeperFoundation.width, (x) => BeforeTile(x: x, y: y))),
          remainingMines: MinesweeperFoundation.minesNum,
          isFlagMode: false,
        );

  final List<List<Tile>> tiles;
  final int remainingMines;
  final bool isFlagMode;
  GameState get gameState {
    if (tiles.any((row) => row.any((tile) => tile.isMine && tile.isRevealed))) {
      return GameState.lost;
    }
    if (tiles
        .every((row) => row.every((tile) => tile.isMine || tile.isRevealed))) {
      return GameState.won;
    }
    if (tiles
        .every((row) => row.every((tile) => !tile.isRevealed))) {
      return GameState.before;
    }
    return GameState.playing;
  }

  MinesweeperState copyWith({
    List<List<Tile>>? tiles,
    int? remainingMines,
    bool? isFlagMode,
  }) {
    return MinesweeperState(
      tiles: tiles ?? this.tiles,
      remainingMines: remainingMines ?? this.remainingMines,
      isFlagMode: isFlagMode ?? this.isFlagMode,
    );
  }

  @override
  List<Object?> get props => [tiles, remainingMines, isFlagMode];
}
