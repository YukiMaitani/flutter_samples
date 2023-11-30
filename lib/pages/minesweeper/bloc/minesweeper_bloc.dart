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
      tiles.setTileWithI(index, isMine: true);
    }
    for (final tile in tiles.expand((e) => e).where((e) => !e.isMine)) {
      tiles.setAdjacentMinesNum(tile);
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
      adjacentMinesNum: adjacentBombs,
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

  List<Tile> getAdjacentTiles(int x, int y) {
    final result = <Tile>[];
    for (int i = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        final newX = x + i;
        final newY = y + j;
        if (isOutOfBound(newX, newY)) {
          continue;
        }
        result.add(this[newY][newX]);
      }
    }
    return result;
  }

  int getAdjacentMinesNum(int x, int y) {
    return getAdjacentTiles(x, y).where((tile) => tile.isMine).length;
  }

  void setAdjacentMinesNum(Tile tile) {
    final adjacentMinesNum = getAdjacentMinesNum(tile.x, tile.y);
    this[tile.y][tile.x] = tile.copyWith(adjacentMinesNum: adjacentMinesNum);
  }
}
