import 'package:freezed_annotation/freezed_annotation.dart';

part 'tile.freezed.dart';

@freezed
class Tile with _$Tile {
  const factory Tile({
    required bool isMine,
    required bool isFlagged,
    required bool isRevealed,
    required int adjacentBombs,
  }) = _Tile;

  const factory Tile.startBefore({
    @Default(false) bool isMine,
    @Default(false) bool isFlagged,
    @Default(false) bool isRevealed,
    @Default(-1) int adjacentBombs,
  }) = StartBeforeTile;
}
