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
}
