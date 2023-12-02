import 'dart:math';

import 'package:bloc/bloc.dart';

import '../model/tile.dart';
import '../util/foundation.dart';
import '../util/index.dart';
import 'minesweeper_event.dart';
import 'minesweeper_state.dart';

class MinesweeperBloc extends Bloc<MinesweeperEvent, MinesweeperState> {
  MinesweeperBloc() : super(MinesweeperState.initial()) {
    on<SelectTile>(_onSelectTileEvent);
    on<ToggleFlagMode>(_onToggleFlagModeEvent);
    on<ResetGame>(_onResetGameEvent);
  }

  void _onSelectTileEvent(SelectTile event, Emitter<MinesweeperState> emit) {
    final selectIndex = event.selectIndex;
    final gameState = state.gameState;
    if (gameState == GameState.won || gameState == GameState.lost) {
      return;
    }
    final tiles = state.tiles;
    if (gameState == GameState.before) {
      _initGame(selectIndex, tiles);
    }
    final selectTile = tiles.getTileWithI(selectIndex);
    if (selectTile.isRevealed) {
      _onChording(selectTile, tiles);
    } else {
      if(!state.isFlagMode || state.gameState == GameState.before){
        _openTile(selectTile, tiles);
      } else if(!selectTile.isRevealed){
        _flagTile(selectTile, tiles);
      }
    }
    emit(state.copyWith(tiles: tiles));
  }

  void _onToggleFlagModeEvent(ToggleFlagMode event, Emitter<MinesweeperState> emit) {
    emit(state.copyWith(isFlagMode: !state.isFlagMode));
  }

  void _onResetGameEvent(ResetGame event, Emitter<MinesweeperState> emit) {
    emit(MinesweeperState.initial());
  }

  void _openTile(Tile selectTile, List<List<Tile>> tiles, {
      List<Tile> preZeroTiles = const [],}) {
    tiles.setTileWithT(selectTile.copyWith(isRevealed: true));
    Iterable<Tile> adjacentZeroTiles = [];
    if (selectTile.adjacentMinesNum == 0) {
      final adjacentTiles = tiles.getAdjacentTilesWithC(selectTile.x, selectTile.y);
      for (final adjacentTile in adjacentTiles) {
        tiles.setTileWithT(adjacentTile.copyWith(isRevealed: true));
      }
      adjacentZeroTiles = adjacentTiles.where((e) => e.adjacentMinesNum == 0);
    }
    final zeroTiles = [...preZeroTiles, ...adjacentZeroTiles].where((tile) {
      final adjacentTiles = tiles.getAdjacentTilesWithC(tile.x, tile.y);
      return adjacentTiles.any((e) => !e.isRevealed);
    }).toList();
    if (zeroTiles.isEmpty) {
      return;
    } else {
      final checkTile = zeroTiles.removeLast();
      _openTile(checkTile, tiles, preZeroTiles: zeroTiles);
    }
  }

  void _onChording(Tile selectTile, List<List<Tile>> tiles) {
    final adjacentTiles =
        tiles.getAdjacentTilesWithC(selectTile.x, selectTile.y);
    final adjacentFlags = adjacentTiles.where((e) => e.isFlagged);
    if (adjacentFlags.length == selectTile.adjacentMinesNum) {
      for (final adjacentTile in adjacentTiles) {
        if (!adjacentTile.isFlagged) {
          _openTile(adjacentTile, tiles);
        }
      }
    }
  }

  void _flagTile(Tile selectTile,List<List<Tile>> tiles) {
    tiles.setTileWithT(selectTile.copyWith(isFlagged: !selectTile.isFlagged));
  }

  void _initGame(int selectIndex, List<List<Tile>> tiles) {
    final placeableIndexes = List.generate(
        MinesweeperFoundation.width * MinesweeperFoundation.height,
        (index) => index);
    final removeList = [...tiles.getAdjacentIndexes(selectIndex), selectIndex];
    placeableIndexes.removeWhere((index) => removeList.contains(index));
    for (var i = 0; i < MinesweeperFoundation.minesNum; i++) {
      final index =
          placeableIndexes.removeAt(Random().nextInt(placeableIndexes.length));
      tiles.setTileWithI(index, isMine: true);
    }
    for (final tile in tiles.expand((e) => e).where((e) => !e.isMine)) {
      tiles.setAdjacentMinesNum(tile);
    }
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

  void setTileWithT(Tile tile) {
    this[tile.y][tile.x] = tile;
  }

  List<Tile> getAdjacentTilesWithC(int x, int y) {
    final result = <Tile>[];
    for (int i = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        final newX = x + i;
        final newY = y + j;
        if (isOutOfBound(newX, newY) || (i == 0 && j == 0)) {
          continue;
        }
        result.add(this[newY][newX]);
      }
    }
    return result;
  }

  List<Tile> getAdjacentTilesWithI(int index) {
    final coordinate = getCoordinate(index);
    return getAdjacentTilesWithC(coordinate.x, coordinate.y);
  }

  List<int> getAdjacentIndexes(int index) {
    final coordinate = getCoordinate(index);
    final result = <int>[];
    for (int i = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        final newX = coordinate.x + i;
        final newY = coordinate.y + j;
        if (isOutOfBound(newX, newY)) {
          continue;
        }
        result.add(getFlattenIndex(newX, newY));
      }
    }
    return result;
  }

  int getAdjacentMinesNum(int x, int y) {
    return getAdjacentTilesWithC(x, y).where((tile) => tile.isMine).length;
  }

  void setAdjacentMinesNum(Tile tile) {
    final adjacentMinesNum = getAdjacentMinesNum(tile.x, tile.y);
    this[tile.y][tile.x] = tile.copyWith(adjacentMinesNum: adjacentMinesNum);
  }
}
