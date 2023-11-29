import 'package:equatable/equatable.dart';
import 'package:flutter_samples/pages/minesweeper/model/tile.dart';

import '../util/foundation.dart';

enum GameState { before, playing, won, lost }

class MinesweeperState extends Equatable {
  const MinesweeperState({required this.tiles, required this.remainingMines});

  MinesweeperState.initial()
      : this(
          tiles: List.generate(
              MinesweeperFoundation.height,
              (y) => List.generate(
                  MinesweeperFoundation.width, (x) => BeforeTile(x: x, y: y))),
          remainingMines: MinesweeperFoundation.minesNum,
        );

  final List<List<Tile>> tiles;
  final int remainingMines;
  GameState get gameState {
    if (tiles.any((row) => row.any((tile) => tile.isMine && tile.isRevealed))) {
      return GameState.lost;
    }
    if (tiles
        .every((row) => row.every((tile) => tile.isMine || tile.isRevealed))) {
      return GameState.won;
    }
    if (tiles
        .every((row) => row.every((tile) => tile.adjacentMinesNum == -1))) {
      return GameState.before;
    }
    return GameState.playing;
  }

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
  List<Object?> get props => [tiles, remainingMines];
}
