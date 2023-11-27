import 'package:bloc/bloc.dart';

import '../model/tile.dart';
import '../util/index.dart';
import 'minesweeper_event.dart';
import 'minesweeper_state.dart';

class MinesweeperBloc extends Bloc<MinesweeperEvent, MinesweeperState> {
  MinesweeperBloc() : super(MinesweeperState.initial()) {
    on<MinesweeperStartEvent>(_onMinesweeperStartEvent);
  }

  void _onMinesweeperStartEvent(
      MinesweeperStartEvent event, Emitter<MinesweeperState> emit) {
    final selectIndex = event.selectIndex;
    final tiles = state.tiles;
    tiles.setTileWithI(selectIndex, isRevealed: true, adjacentBombs: 0);
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
}
