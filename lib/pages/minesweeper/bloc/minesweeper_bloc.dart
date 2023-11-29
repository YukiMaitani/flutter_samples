import 'dart:math';

import 'package:bloc/bloc.dart';

import '../model/tile.dart';
import '../util/foundation.dart';
import '../util/index.dart';
import 'minesweeper_event.dart';
import 'minesweeper_state.dart';

class MinesweeperBloc extends Bloc<MinesweeperEvent, MinesweeperState> {
  MinesweeperBloc() : super(MinesweeperState.initial()) {
    on<SelectTile>(_onMinesweeperStartEvent);
  }

  void _onMinesweeperStartEvent(
      SelectTile event, Emitter<MinesweeperState> emit) {
    final selectIndex = event.selectIndex;
    if (state.gameState == GameState.before) {
      _initGame(selectIndex, emit);
    }
    final tiles = state.tiles;
    final selectTile = tiles.getTileWithI(selectIndex);
    if (selectTile.isRevealed) {
      return;
    } else {
      _openTile(selectIndex, emit);
    }
  }

  void _openTile(int selectIndex, Emitter<MinesweeperState> emit) {
    final tiles = state.tiles;
    tiles.setTileWithI(selectIndex, isRevealed: true);
    emit(state.copyWith(tiles: tiles));
  }

  void _initGame(int selectIndex, Emitter<MinesweeperState> emit) {
    final tiles = state.tiles;
    tiles.setTileWithI(selectIndex, adjacentBombs: 0);
    final placeableIndexes = List.generate(
        MinesweeperFoundation.width * MinesweeperFoundation.height,
        (index) => index)
      ..remove(selectIndex);
    for (var i = 0; i < MinesweeperFoundation.minesNum; i++) {
      final index =
          placeableIndexes.removeAt(Random().nextInt(placeableIndexes.length));
      tiles.setTileWithI(index, isMine: true, adjacentBombs: 9);
    }
    emit(state.copyWith(tiles: tiles));
  }
}

extension TileMatrixExtension on List<List<Tile>> {
  Tile getTileWithC(({int x, int y}) coordinate) =>
      this[coordinate.y][coordinate.x];
  Tile getTileWithI(int index) => getTileWithC(getCoordinate(index));
  void setTileWithC(
      {required ({int x, int y}) coordinate,
      bool? isMine,
      bool? isFlagged,
      bool? isRevealed,
      int? adjacentBombs}) {
    this[coordinate.y][coordinate.x] =
        this[coordinate.y][coordinate.x].nullCopyWith(
      isMine: isMine,
      isFlagged: isFlagged,
      isRevealed: isRevealed,
      adjacentBombs: adjacentBombs,
    );
  }

  void setTileWithI(int index,
          {bool? isMine,
          bool? isFlagged,
          bool? isRevealed,
          int? adjacentBombs}) =>
      setTileWithC(
          coordinate: getCoordinate(index),
          isMine: isMine,
          isFlagged: isFlagged,
          isRevealed: isRevealed,
          adjacentBombs: adjacentBombs);

  void setTileWithT(Tile tile, int index) {
    final coordinate = getCoordinate(index);
    this[coordinate.y][coordinate.x] = tile;
  }
}
